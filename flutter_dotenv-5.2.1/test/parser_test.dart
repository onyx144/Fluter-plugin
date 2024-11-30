import 'dart:math';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';

const ceil = 100000;

void main() {
  late Random rand;
  const psr = Parser();
  group('[Parser]', () {
    setUp(() => rand = Random());
    test('it swallows leading "export"', () {
      var out = psr.swallow(' export foo = bar  ');
      expect(out, equals('foo = bar'));

      out = psr.swallow(' foo = bar export');
      expect(out, equals('foo = bar export'));
    });

    test('it strips trailing comments', () {
      var out = psr.strip(
          'needs="explanation"  # It was the year when they finally immanentized the Eschaton.');
      expect(out, equals('needs="explanation"'));
      out = psr.strip(
          'needs="explanation  # It was the year when they finally immanentized the Eschaton." ');
      expect(
          out,
          equals(
              'needs="explanation  # It was the year when they finally immanentized the Eschaton."'));
      out = psr.strip(
          'needs=explanation  # It was the year when they finally immanentized the Eschaton."',
          includeQuotes: true);
      expect(out, equals('needs=explanation'));
      out = psr.strip('  # It was the best of times, it was a waste of time.');
      expect(out, isEmpty);
    });
    test('it knows quoted # is not a comment', () {
      var doub = psr.parseOne('foo = "ab#c"');
      var single = psr.parseOne("foo = 'ab#c'");

      expect(doub['foo'], equals('ab#c'));
      expect(single['foo'], equals('ab#c'));
    });
    test('it handles quotes in a comment', () {
      // note terminal whitespace
      var sing = psr.parseOne("fruit = 'banana' # comments can be 'sneaky!' ");
      var doub =
          psr.parseOne('fruit = " banana" # comments can be "sneaky!" ');
      var none =
          psr.parseOne('fruit =    banana  # comments can be "sneaky!" ');

      expect(sing['fruit'], equals('banana'));
      expect(doub['fruit'], equals(' banana'));
      expect(none['fruit'], equals('banana'));
    });
    test('treats all # in unquoted as comments', () {
      var fail =
          psr.parseOne('fruit = banana # I\'m a comment with a final "quote"');
      expect(fail['fruit'], equals('banana'));
    });

    test('it handles unquoted values', () {
      var out = psr.unquote('   str   ');
      expect(out, equals('str'));
    });
    test('it handles double quoted values', () {
      var out = psr.unquote('"val "');
      expect(out, equals('val '));
    });
    test('it handles single quoted values', () {
      var out = psr.unquote("'  val'");
      expect(out, equals('  val'));
    });
    test('retain trailing single quote', () {
      var out = psr.unquote("retained'");
      expect(out, equals("retained'"));
    });

    // test('it handles escaped quotes within values', () { // Does not
    //   var out = _psr.unquote('''\'val_with_\\"escaped\\"_\\'quote\\'s \'''');
    //   expect(out, equals('''val_with_"escaped"_'quote's '''));
    //   out = _psr.unquote("  val_with_\"escaped\"_\'quote\'s ");
    //   expect(out, equals('''val_with_"escaped"_'quote's'''));
    // });

    test('it skips empty lines', () {
      var out = psr.parse([
        '# Define environment variables.',
        '  # comments will be stripped',
        'foo=bar  # trailing junk',
        ' baz =    qux',
        '# another comment'
      ]);
      expect(out, equals({'foo': 'bar', 'baz': 'qux'}));
    });

    test('it ignores duplicate keys', () {
      var out = psr.parse(['foo=bar', 'foo=baz']);
      expect(out, equals({'foo': 'bar'}));
    });
    test('it substitutes known variables into other values', () {
      var out = psr.parse(['foo=bar', r'baz=super$foo${foo}']);
      expect(out, equals({'foo': 'bar', 'baz': 'superbarbar'}));
    });
    test('it discards surrounding quotes', () {
      var out = psr.parse([r"foo = 'bar'", r'export baz="qux"']);
      expect(out, equals({'foo': 'bar', 'baz': 'qux'}));
    });

    test('it detects unquoted values', () {
      var out = psr.surroundingQuote('no quotes here!');
      expect(out, isEmpty);
    });
    test('it detects double-quoted values', () {
      var out = psr.surroundingQuote('"double quoted"');
      expect(out, equals('"'));
    });
    test('it detects single-quoted values', () {
      var out = psr.surroundingQuote("'single quoted'");
      expect(out, equals("'"));
    });

    test('it performs variable substitution', () {
      var out = psr.interpolate(r'a$foo$baz', {'foo': 'bar', 'baz': 'qux'});
      expect(out, equals('abarqux'));
    });
    test('it skips undefined variables', () {
      var r = rand.nextInt(ceil); // avoid runtime collision with real env vars
      var out = psr.interpolate('a\$jinx_$r', {});
      expect(out, equals('a'));
    });
    test('it handles explicitly null values in env', () {
      var r = rand.nextInt(ceil); // avoid runtime collision with real env vars
      var out = psr.interpolate('a\$foo_$r\$baz_$r', {'foo_$r': null});
      expect(out, equals('a'));
    });
    test('it handles \${surrounding braces} on vars', () {
      var r = rand.nextInt(ceil); // avoid runtime collision with real env vars
      var out = psr.interpolate('optional_\${foo_$r}', {'foo_$r': 'curlies'});
      expect(out, equals('optional_curlies'));
    });

    test('it handles equal signs in values', () {
      var none = psr.parseOne('foo=bar=qux');
      var sing = psr.parseOne("foo='bar=qux'");
      var doub = psr.parseOne('foo="bar=qux"');

      expect(none['foo'], equals('bar=qux'));
      expect(sing['foo'], equals('bar=qux'));
      expect(doub['foo'], equals('bar=qux'));
    });

    test('it skips var substitution in single quotes', () {
      var r = rand.nextInt(ceil); // avoid runtime collision with real env vars
      var out = psr.parseOne("some_var='my\$key_$r'", env: {'key_$r': 'val'});
      expect(out['some_var'], equals('my\$key_$r'));
    });
    test('it performs var subs in double quotes', () {
      var r = rand.nextInt(ceil); // avoid runtime collision with real env vars
      var out = psr.parseOne('some_var="my\$key_$r"', env: {'key_$r': 'val'});
      expect(out['some_var'], equals('myval'));
    });
    test('it performs var subs without quotes', () {
      var r = rand.nextInt(ceil); // avoid runtime collision with real env vars
      var out = psr.parseOne("some_var=my\$key_$r", env: {'key_$r': 'val'});
      expect(out['some_var'], equals('myval'));
    });
  });
}

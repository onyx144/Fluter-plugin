# flutter_dotenv

[![Pub Version][pub-badge]][pub]

[pub]: https://pub.dartlang.org/packages/flutter_dotenv
[pub-badge]: https://img.shields.io/pub/v/flutter_dotenv.svg

Load configuration at runtime from a `.env` file which can be used throughout the application.

> **The [twelve-factor app][12fa] stores [config][cfg] in _environment variables_**
> (often shortened to _env vars_ or _env_). Env vars are easy to change
> between deploys without changing any code... they are a language- and
> OS-agnostic standard.

[12fa]: https://www.12factor.net
[cfg]: https://12factor.net/config

# About

This library is a fork of [mockturtl/dotenv] dart library, initially with slight changes to make it work with flutter.

[mockturtl/dotenv]: https://pub.dartlang.org/packages/dotenv

An _environment_ is the set of variables known to a process (say, `PATH`, `PORT`, ...).
It is desirable to mimic the production environment during development (testing,
staging, ...) by reading these values from a file.

This library parses that file and merges its values with the built-in
[`Platform.environment`][docs-io] map.

[docs-io]: https://api.dartlang.org/apidocs/channels/stable/dartdoc-viewer/dart:io.Platform#id_environment

# Security Considerations

Sensitive keys like API keys and tokens should not be stored in your Flutter app. They can be extracted even if obfuscated. This libary currently does not obfuscate variables as it may lull the consumers into a false sense of security. Use environment variables on the frontend application for non-sensitive configuration values, such as API endpoints and feature flags.

For more details on mobile app security best practices, refer to the [OWASP Mobile Security Project.](https://owasp.org/www-project-mobile-top-10/)

# Usage

1. Create a `.env` file in the root of your project with the example content:

```sh
FOO=foo
BAR=bar
FOOBAR=$FOO$BAR
ESCAPED_DOLLAR_SIGN='$1000'
# This is a comment
```

> Note: If deploying to web server, ensure that the config file is uploaded and not ignored. (Whitelist the config file on the server, or name the config file without a leading `.`)

2. Add the `.env` file to your assets bundle in `pubspec.yaml`. **Ensure that the path corresponds to the location of the .env file!**

```yml
assets:
  - .env
```

3. Remember to add the `.env` file as an entry in your `.gitignore` if it isn't already unless you want it included in your version control.

```txt
*.env
```

4. Load the `.env` file in `main.dart`. Note that `flutter_dotenv >=5.0.0` has a slightly different syntax for consuming the DotEnv data.

**v5.0.0 and later**

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';

// DotEnv dotenv = DotEnv() is automatically called during import.
// If you want to load multiple dotenv files or name your dotenv object differently, you can do the following and import the singleton into the relavant files:
// DotEnv another_dotenv = DotEnv()

Future main() async {
  // To load the .env file contents into dotenv.
  // NOTE: fileName defaults to .env and can be omitted in this case.
  // Ensure that the filename corresponds to the path in step 1 and 2.
  await dotenv.load(fileName: ".env");
  //...runapp
}
```

You can then access variables from `.env` throughout the application

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';
dotenv.env['VAR_NAME'];
```

**Before v5.0.0**

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart' as DotEnv;

Future main() async {
  await DotEnv.load(fileName: ".env");
  //...runapp
}
```

Access env using:

```dart
import 'package:flutter_dotenv/flutter_dotenv.dart';
env['VAR_NAME'];
```

Optionally you could map `env` after load to a config model to access a config with types.

# Advanced usage

Refer to the `test/dotenv_test.dart` file for a better idea of the behaviour of the `.env` parser.


## Get with typing

It's a common pattern to get an env variable then parse it as a type. You can get variables that are already typed by using the following functions:

```dart
  // someBool is a bool
  final someBool = dotenv.getBool('VAR_NAME', fallback: true);
  // someDouble is a double
  final someDouble = dotenv.getDouble('VAR_NAME', fallback: .3);
  // someInt is an int
  final someInt = dotenv.getInt('VAR_NAME', fallback: 42);
```

## Referencing

You can reference variables defined above other within `.env`:

```
  FOO=foo
  BAR=bar
  FOOBAR=$FOO$BAR
```

You can escape referencing by wrapping the value in single quotes:

```dart
ESCAPED_DOLLAR_SIGN='$1000'
```

## Merging

You can merge a map into the environment on load:

```dart
  await DotEnv.load(mergeWith: { "FOO": "foo", "BAR": "bar"});
```

You can also reference these merged variables within `.env`:

```
  FOOBAR=$FOO$BAR
```

## Using in tests

There is a `testLoad` method that can be used to load a static set of variables for testing.

```dart
// Loading from a static string.
dotenv.testLoad(fileInput: '''FOO=foo
BAR=bar
''');

// Loading from a file synchronously.
dotenv.testLoad(fileInput: File('test/.env').readAsStringSync());
```

## Null safety

To avoid null-safety checks for variables that are known to exist, there is a `get()` method that
will throw an exception if the variable is undefined. You can also specify a default fallback 
value for when the variable is undefined in the .env file.

```dart
Future<void> main() async {
  await dotenv.load();

  String foo = dotenv.get('VAR_NAME');

  // Or with fallback.
  String bar = dotenv.get('MISSING_VAR_NAME', fallback: 'sane-default');

  // This would return null.
  String? baz = dotenv.maybeGet('MISSING_VAR_NAME', fallback: null);
}
```

## Usage with Platform Environment

The Platform.environment map can be merged into the env:

```dart
  // For example using Platform.environment that contains a CLIENT_ID entry
  await DotEnv.load(mergeWith: Platform.environment);
  print(env["CLIENT_ID"]);
```

Like other merged entries described above, `.env` entries can reference these merged Platform.Environment entries if required:

```
  CLIENT_URL=https://$CLIENT_ID.dev.domain.com
```

# Security Considerations

### Never store sensitive keys in the frontend:

Sensitive keys like API keys and tokens should not be stored in your Flutter app. They can be extracted even if obfuscated. This libary currently chooses not to ocfuscate the variables as it may lull the consumers into a false sense of security. Use environment variables for non-sensitive configuration values, such as API endpoints and feature flags. 

# Discussion

Use the [issue tracker][tracker] for bug reports and feature requests.

Pull requests are welcome.

[tracker]: https://github.com/java-james/flutter_dotenv/issues

# Prior art

[flutter_dotenv]: https://pub.dartlang.org/packages/dotenv

- [mockturtl/dotenv][] (dart)
- [bkeepers/dotenv][] (ruby)
- [motdotla/dotenv][] (node)
- [theskumar/python-dotenv][] (python)
- [joho/godotenv][] (go)
- [slapresta/rust-dotenv][] (rust)
- [chandu/dotenv][] (c#)
- [tpope/lein-dotenv][], [rentpath/clj-dotenv][] (clojure)
- [mefellows/sbt-dotenv][] (scala)
- [greenspun/dotenv][] (half of common lisp)

[mockturtl/dotenv]: https://pub.dartlang.org/packages/dotenv
[bkeepers/dotenv]: https://github.com/bkeepers/dotenv
[motdotla/dotenv]: https://github.com/motdotla/dotenv
[theskumar/python-dotenv]: https://github.com/theskumar/python-dotenv
[joho/godotenv]: https://github.com/joho/godotenv
[slapresta/rust-dotenv]: https://github.com/slapresta/rust-dotenv
[chandu/dotenv]: https://github.com/Chandu/DotEnv
[tpope/lein-dotenv]: https://github.com/tpope/lein-dotenv
[rentpath/clj-dotenv]: https://github.com/rentpath/clj-dotenv
[mefellows/sbt-dotenv]: https://github.com/mefellows/sbt-dotenv
[greenspun/dotenv]: https://www.youtube.com/watch?v=pUjJU8Bbn3g

# license: [MIT](LICENSE)

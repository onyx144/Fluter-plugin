// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'common/service_test_common.dart';
import 'common/test_helper.dart';

// AUTOGENERATED START
//
// Update these constants by running:
//
// dart pkg/vm_service/test/update_line_numbers.dart <test.dart>
//
const LINE_A = 25;
// AUTOGENERATED END

const file = 'step_through_constructor_test.dart';

void code() {
  Foo();
}

class Foo {
  Foo() {
    print('Hello from Foo!'); // LINE_A
  }
}

final stops = <String>[];
const expected = <String>[
  '$file:${LINE_A + 0}:5', // on 'print'
  '$file:${LINE_A + 1}:3', // on ending '}'
];

final tests = [
  hasPausedAtStart,
  setBreakpointAtLine(LINE_A),
  runStepIntoThroughProgramRecordingStops(stops),
  checkRecordedStops(
    stops,
    expected,
    debugPrint: true,
    debugPrintFile: file,
    debugPrintLine: LINE_A,
  ),
];

void main([args = const <String>[]]) => runIsolateTests(
      args,
      tests,
      'step_through_constructor_test.dart',
      testeeConcurrent: code,
      pauseOnStart: true,
      pauseOnExit: true,
    );
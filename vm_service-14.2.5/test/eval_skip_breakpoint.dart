// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.
// VMOptions=--verbose_debug

import 'dart:developer';

import 'package:vm_service/vm_service.dart';

import 'common/service_test_common.dart';
import 'common/test_helper.dart';

// AUTOGENERATED START
//
// Update these constants by running:
//
// dart pkg/vm_service/test/update_line_numbers.dart <test.dart>
//
const LINE_B = 24;
const LINE_A = 28;
// AUTOGENERATED END

void bar() {
  print('bar'); // LINE_B
}

void testMain() {
  debugger(); // LINE_A
  bar();
  print('Done');
}

final tests = <IsolateTest>[
  hasStoppedAtBreakpoint,
  stoppedAtLine(LINE_A),
  // Add breakpoint
  setBreakpointAtLine(LINE_B),
  // Evaluate 'bar()'
  (VmService service, IsolateRef isolateRef) async {
    final isolate = await service.getIsolate(isolateRef.id!);
    await service.evaluate(
      isolateRef.id!,
      isolate.rootLib!.id!,
      'bar()',
      disableBreakpoints: true,
    );
  },
  hasStoppedAtBreakpoint,
  stoppedAtLine(LINE_A),
  resumeIsolate,

  hasStoppedAtBreakpoint,
  stoppedAtLine(LINE_B),
  resumeIsolate,
];

void main([args = const <String>[]]) => runIsolateTests(
      args,
      tests,
      'eval_skip_breakpoint.dart',
      testeeConcurrent: testMain,
    );

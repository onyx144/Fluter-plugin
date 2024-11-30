// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Check the VM correctly undoes the layers of mixin application to report the
// evaluation scope the frontend as the original mixin.

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
const LINE_A = 30;
// AUTOGENERATED END

class S {}

mixin class M {
  static String? foo;
  void bar() {
    foo = 'theExpectedValue';
    debugger(); // LINE_A
  }
}

// MA=S&M -> S -> Object
class MA = S with M;

void testeeMain() {
  MA().bar();
}

final tests = <IsolateTest>[
  hasStoppedAtBreakpoint,
  stoppedAtLine(LINE_A),
  (VmService service, IsolateRef isolateRef) async {
    final isolateId = isolateRef.id!;
    await evaluateInFrameAndExpect(
      service,
      isolateId,
      'foo',
      'theExpectedValue',
    );
  },
  resumeIsolate,
];

void main([args = const <String>[]]) => runIsolateTests(
      args,
      tests,
      'evaluate_in_mixin_application_alias_frame_test.dart',
      testeeConcurrent: testeeMain,
    );

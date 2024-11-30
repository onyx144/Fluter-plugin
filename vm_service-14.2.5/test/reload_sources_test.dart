// Copyright (c) 2023, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:developer';

import 'package:test/test.dart';
import 'package:vm_service/vm_service.dart';

import 'common/service_test_common.dart';
import 'common/test_helper.dart';

// AUTOGENERATED START
//
// Update these constants by running:
//
// dart pkg/vm_service/test/update_line_numbers.dart <test.dart>
//
const LINE_A = 23;
// AUTOGENERATED END

void testMain() {
  debugger(); // LINE_A.
  print('1');
  while (true) {}
}

Future<void> isolateIsRunning(VmService service, IsolateRef isolateRef) async {
  final isolate = await service.getIsolate(isolateRef.id!);
  final pauseEvent = isolate.pauseEvent;
  final isPaused = pauseEvent == null
      ? false
      : isolate.pauseEvent!.kind != EventKind.kResume;
  final topFrame = pauseEvent?.topFrame;
  expect(!isPaused && topFrame != null, true);
}

final tests = <IsolateTest>[
  // Stopped at 'debugger' statement.
  hasStoppedAtBreakpoint,
  stoppedAtLine(LINE_A),
  // Reload sources and request to pause post reload. The pause request will be
  // ignored because we are already paused at a breakpoint.
  reloadSources(pause: true),
  // Ensure that we are still stopped at a breakpoint.
  hasStoppedAtBreakpoint,
  // Resume the isolate into the while loop.
  resumeIsolate,
  // Reload sources and request to pause post reload. The pause request will
  // be respected because we are not already paused.
  reloadSources(pause: true),
  // Ensure that we are paused post reload request.
  hasStoppedPostRequest,
  // Resume the isolate.
  resumeIsolate,
  // Verify that it is running.
  isolateIsRunning,
  // Reload sources and do not request to pause post reload.
  reloadSources(),
  // Verify that it is running.
  isolateIsRunning,
];

void main([args = const <String>[]]) => runIsolateTests(
      args,
      tests,
      'reload_sources_test.dart',
      testeeConcurrent: testMain,
    );

// Copyright 2013 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:io';
import 'dart:typed_data';
import 'package:file_selector_platform_interface/file_selector_platform_interface.dart';
import 'package:flutter/material.dart';

/// Screen that allows the user to select a save location using `getSavePath`,
/// then writes text to a file at that location.
class SaveTextPage extends StatelessWidget {
  /// Default Constructor
  SaveTextPage({super.key});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  Future<void> _saveFile() async {
    final String fileName = _nameController.text;
    final FileSaveLocation? result =
        await FileSelectorPlatform.instance.getSaveLocation(
      options: SaveDialogOptions(suggestedName: fileName),
      acceptedTypeGroups: const <XTypeGroup>[
        XTypeGroup(
          label: 'Plain text',
          extensions: <String>['txt'],
        ),
        XTypeGroup(
          label: 'JSON',
          extensions: <String>['json'],
        ),
      ],
    );
    // Operation was canceled by the user.
    if (result == null) {
      return;
    }
    String path = result.path;
    // Append an extension based on the selected type group if the user didn't
    // include one.
    if (!path.split(Platform.pathSeparator).last.contains('.')) {
      final XTypeGroup? activeGroup = result.activeFilter;
      if (activeGroup != null) {
        // The group is one of the groups passed in above, each of which has
        // exactly one `extensions` entry.
        path = '$path.${activeGroup.extensions!.first}';
      }
    }
    final String text = _contentController.text;
    final Uint8List fileData = Uint8List.fromList(text.codeUnits);
    final XFile textFile = XFile.fromData(fileData, name: fileName);
    await textFile.saveTo(result.path);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Save text into a file'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              width: 300,
              child: TextField(
                minLines: 1,
                maxLines: 12,
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: '(Optional) Suggest File Name',
                ),
              ),
            ),
            SizedBox(
              width: 300,
              child: TextField(
                minLines: 1,
                maxLines: 12,
                controller: _contentController,
                decoration: const InputDecoration(
                  hintText: 'Enter File Contents',
                ),
              ),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
              ),
              onPressed: _saveFile,
              child: const Text('Press to save a text file'),
            ),
          ],
        ),
      ),
    );
  }
}

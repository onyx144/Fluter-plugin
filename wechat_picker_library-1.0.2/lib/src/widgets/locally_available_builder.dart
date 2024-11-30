// Copyright 2019 The FlutterCandies author. All rights reserved.
// Use of this source code is governed by an Apache license that can be found
// in the LICENSE file.

import 'dart:developer' as dev;

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:wechat_picker_library/wechat_picker_library.dart';

/// An asset builder that builds according to the locally available state.
final class LocallyAvailableBuilder extends StatefulWidget {
  const LocallyAvailableBuilder({
    super.key,
    required this.asset,
    this.isOriginal = true,
    required this.builder,
    this.progressBuilder,
  });

  final AssetEntity asset;
  final bool isOriginal;
  final Widget Function(BuildContext context, AssetEntity asset) builder;
  final Widget Function(
    BuildContext context,
    PMRequestState? state,
    double? progress,
  )? progressBuilder;

  @override
  State<LocallyAvailableBuilder> createState() =>
      _LocallyAvailableBuilderState();
}

class _LocallyAvailableBuilderState extends State<LocallyAvailableBuilder> {
  bool _hasError = false;
  bool _isLocallyAvailable = false;
  PMProgressHandler? _progressHandler;

  @override
  void initState() {
    super.initState();
    _checkLocallyAvailable();
  }

  @override
  void didUpdateWidget(LocallyAvailableBuilder oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.asset != oldWidget.asset ||
        widget.isOriginal != oldWidget.isOriginal) {
      _isLocallyAvailable = false;
      _progressHandler = null;
      _checkLocallyAvailable();
    }
  }

  void _markAndPresentError(Object exception, StackTrace stack) {
    _hasError = true;
    safeSetState(() {});
    FlutterError.presentError(
      FlutterErrorDetails(
        exception: exception,
        stack: stack,
        library: 'LocallyAvailableBuilder(${widget.asset.id})',
      ),
    );
  }

  Future<void> _checkLocallyAvailable() async {
    try {
      _isLocallyAvailable = await widget.asset.isLocallyAvailable(
        isOrigin: widget.isOriginal,
      );
    } catch (e, s) {
      _markAndPresentError(e, s);
      rethrow;
    } finally {
      safeSetState(() {});
    }
    if (!mounted || _isLocallyAvailable) {
      return;
    }
    final handler = PMProgressHandler();
    safeSetState(() {
      _progressHandler = handler;
    });
    widget.asset
        .loadFile(
      isOrigin: widget.isOriginal,
      withSubtype: true,
      progressHandler: handler,
    )
        .then((file) {
      if (file != null) {
        _isLocallyAvailable = true;
      }
    }).catchError((e, s) {
      _markAndPresentError(e, s);
    }).whenComplete(() {
      safeSetState(() {});
    });
    handler.stream.listen((PMProgressState s) {
      assert(() {
        dev.log('Handling progress for asset: $s.', name: widget.asset.id);
        return true;
      }());
      if (s.state == PMRequestState.success) {
        _isLocallyAvailable = true;
        safeSetState(() {});
      }
    });
  }

  Widget _buildErrorIndicator(BuildContext context) {
    return Center(
      child: Icon(
        Icons.warning_amber_rounded,
        color: context.iconTheme.color?.withOpacity(.4),
        size: 28,
      ),
    );
  }

  Widget _buildIndicator(BuildContext context) {
    return StreamBuilder<PMProgressState>(
      stream: _progressHandler?.stream,
      initialData: const PMProgressState(0, PMRequestState.prepare),
      builder: (BuildContext c, AsyncSnapshot<PMProgressState> s) {
        final PMRequestState? state = s.data?.state;
        final double? progress = s.data?.progress;
        if (widget.progressBuilder case final builder?) {
          return builder(context, state, progress);
        }
        return Row(
          children: [
            Icon(
              state == PMRequestState.failed
                  ? Icons.cloud_off_rounded
                  : Icons.cloud_download_outlined,
              color: context.iconTheme.color?.withOpacity(.4),
              size: 28,
            ),
            if (state != PMRequestState.success &&
                state != PMRequestState.failed)
              ScaleText(
                '  iCloud ${((progress ?? 0) * 100).toInt()}%',
                style: TextStyle(
                  color: context.textTheme.bodyMedium?.color?.withOpacity(.4),
                ),
              ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (_isLocallyAvailable) {
      return widget.builder(context, widget.asset);
    }
    if (_hasError) {
      return _buildErrorIndicator(context);
    }
    if (_progressHandler == null) {
      return const SizedBox.shrink();
    }
    return Center(child: FittedBox(child: _buildIndicator(context)));
  }
}
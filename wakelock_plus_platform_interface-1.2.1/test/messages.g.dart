// Autogenerated from Pigeon (v17.3.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, unnecessary_import, no_leading_underscores_for_local_identifiers
// ignore_for_file: avoid_relative_lib_imports
import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;
import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:wakelock_plus_platform_interface/messages.g.dart';

class _TestWakelockPlusApiCodec extends StandardMessageCodec {
  const _TestWakelockPlusApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is IsEnabledMessage) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is ToggleMessage) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return IsEnabledMessage.decode(readValue(buffer)!);
      case 129:
        return ToggleMessage.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class TestWakelockPlusApi {
  static TestDefaultBinaryMessengerBinding? get _testBinaryMessengerBinding =>
      TestDefaultBinaryMessengerBinding.instance;
  static const MessageCodec<Object?> pigeonChannelCodec =
      _TestWakelockPlusApiCodec();

  void toggle(ToggleMessage msg);

  IsEnabledMessage isEnabled();

  static void setup(TestWakelockPlusApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final ToggleMessage? arg_msg = (args[0] as ToggleMessage?);
          assert(arg_msg != null,
              'Argument for dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.toggle was null, expected non-null ToggleMessage.');
          try {
            api.toggle(arg_msg!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.wakelock_plus_platform_interface.WakelockPlusApi.isEnabled',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel, null);
      } else {
        _testBinaryMessengerBinding!.defaultBinaryMessenger
            .setMockDecodedMessageHandler<Object?>(__pigeon_channel,
                (Object? message) async {
          try {
            final IsEnabledMessage output = api.isEnabled();
            return <Object?>[output];
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}
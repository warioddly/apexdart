import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'apex_dart_platform_interface.dart';

/// An implementation of [ApexDartPlatform] that uses method channels.
class MethodChannelApexDart extends ApexDartPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('apex_dart');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}

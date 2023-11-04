import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'apex_dart_method_channel.dart';

abstract class ApexDartPlatform extends PlatformInterface {
  /// Constructs a ApexDartPlatform.
  ApexDartPlatform() : super(token: _token);

  static final Object _token = Object();

  static ApexDartPlatform _instance = MethodChannelApexDart();

  /// The default instance of [ApexDartPlatform] to use.
  ///
  /// Defaults to [MethodChannelApexDart].
  static ApexDartPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ApexDartPlatform] when
  /// they register themselves.
  static set instance(ApexDartPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}

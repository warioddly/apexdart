import 'package:flutter_test/flutter_test.dart';
import 'package:apex_dart/apex_dart.dart';
import 'package:apex_dart/apex_dart_platform_interface.dart';
import 'package:apex_dart/apex_dart_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockApexDartPlatform
    with MockPlatformInterfaceMixin
    implements ApexDartPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final ApexDartPlatform initialPlatform = ApexDartPlatform.instance;

  test('$MethodChannelApexDart is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelApexDart>());
  });

  test('getPlatformVersion', () async {
    ApexDart apexDartPlugin = ApexDart();
    MockApexDartPlatform fakePlatform = MockApexDartPlatform();
    ApexDartPlatform.instance = fakePlatform;

    expect(await apexDartPlugin.getPlatformVersion(), '42');
  });
}

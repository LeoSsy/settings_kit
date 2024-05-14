import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:settings_kit/android_settings_kit.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  AndroidSettingsKit platform = AndroidSettingsKit();
  const MethodChannel channel = MethodChannel('settings_kit');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    // expect(await platform.getPlatformVersion(), '42');
  });
}

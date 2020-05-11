import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flt_perf_09_e2e_plugin/flt_perf_09_e2e_plugin.dart';

void main() {
  const MethodChannel channel = MethodChannel('flt_perf_09_e2e_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await FltPerf09E2ePlugin.platformVersion, '42');
  });
}

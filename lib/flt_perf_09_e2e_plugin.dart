import 'dart:async';

import 'package:flutter/services.dart';

class FltPerf09E2ePlugin {
  static const MethodChannel _channel =
      const MethodChannel('flt_perf_09_e2e_plugin');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}

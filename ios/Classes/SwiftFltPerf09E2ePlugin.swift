import Flutter
import UIKit

public class SwiftFltPerf09E2ePlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "flt_perf_09_e2e_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftFltPerf09E2ePlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    result("iOS " + UIDevice.current.systemVersion)
  }
}

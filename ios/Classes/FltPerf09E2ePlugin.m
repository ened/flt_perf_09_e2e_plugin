#import "FltPerf09E2ePlugin.h"
#if __has_include(<flt_perf_09_e2e_plugin/flt_perf_09_e2e_plugin-Swift.h>)
#import <flt_perf_09_e2e_plugin/flt_perf_09_e2e_plugin-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "flt_perf_09_e2e_plugin-Swift.h"
#endif

@implementation FltPerf09E2ePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftFltPerf09E2ePlugin registerWithRegistrar:registrar];
}
@end

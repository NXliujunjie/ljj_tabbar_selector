#import "LjjTabbarSelectorPlugin.h"
#import <ljj_tabbar_selector/ljj_tabbar_selector-Swift.h>

@implementation LjjTabbarSelectorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftLjjTabbarSelectorPlugin registerWithRegistrar:registrar];
}
@end

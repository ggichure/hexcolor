#import "HexcolorPlugin.h"
#import <hexcolor/hexcolor-Swift.h>

@implementation HexcolorPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftHexcolorPlugin registerWithRegistrar:registrar];
}
@end

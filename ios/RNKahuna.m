
#import "RNKahuna.h"
#import <Kahuna/Kahuna.h>
#import "React/RCTLog.h"

@implementation RNKahuna

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
// This RCT (React) "macro" exposes the current module to JavaScript
RCT_EXPORT_MODULE();

// We must explicitly expose methods otherwise JavaScript can't access anything
RCT_EXPORT_METHOD(get)
{
  /*if ([[[Kahuna sharedInstance] getDetectedEnvironment] isEqualToString:'s']) {
        RCTLogInfo(@"True");
    } else {
        RCTLogInfo(@"False");
    }*/

  NSString *kahunaDeviceId = [Kahuna getKahunaDeviceId];
  if (kahunaDeviceId && [kahunaDeviceId length] > 0) {
    RCTLogInfo(@"kahunaDeviceId : %@",kahunaDeviceId);
    //resolve(kahunaDeviceId);
  } else {
    RCTLogInfo(@"False");
    //reject(@"NO_DEVICE_ID_ERROR", @"Kahuna SDK does not have a device id", nil);
  }

}




@end

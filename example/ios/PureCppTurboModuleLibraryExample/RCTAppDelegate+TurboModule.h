#import <RCTAppDelegate.h>
#import <ReactCommon/RCTTurboModule.h>

@interface RCTAppDelegate (TurboModule)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker;

@end

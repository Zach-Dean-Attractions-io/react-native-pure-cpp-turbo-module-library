#import <Foundation/Foundation.h>
#import "RCTAppDelegate+TurboModule.h"
#import <React/RCTBridgeDelegate.h>
#import <React/RCTBundleURLProvider.h>
#import "PureCppImpl.h"

@implementation RCTAppDelegate (TurboModule)

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:(const std::string &)name
                                                      jsInvoker:(std::shared_ptr<facebook::react::CallInvoker>)jsInvoker
{
  NSLog(@"In getTurboModule for module: %s", name.c_str());
  if (name == "PureCppTurboModuleLibrary") {
    return std::make_shared<facebook::react::PureCppImpl>(jsInvoker);
  }

  return [super getTurboModule:name jsInvoker:jsInvoker];
}

@end


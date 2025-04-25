#import "PureCppTurboModuleLibraryProvider.h"
#import "PureCppImpl.h"

@implementation PureCppTurboModuleLibraryProvider

- (std::shared_ptr<facebook::react::TurboModule>)getTurboModule:
    (const facebook::react::ObjCTurboModule::InitParams &)params
{
    return std::make_shared<facebook::react::PureCppImpl>(params.jsInvoker);
}

@end

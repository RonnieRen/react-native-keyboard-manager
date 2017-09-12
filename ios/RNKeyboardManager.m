
#import "RNKeyboardManager.h"
#include <IQKeyboardManager/IQKeyboardManager.h>


@implementation RNKeyboardManager


RCT_EXPORT_MODULE()


RCT_EXPORT_METHOD(enableKeyBoardManager)
{
    [IQKeyboardManager sharedManager].enable = true;
}

RCT_EXPORT_METHOD(disableKeyBoardManager)
{
    [IQKeyboardManager sharedManager].enable = false;
}

@end
  

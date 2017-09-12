
#import "RNKeyboardManager.h"
#include <IQKeyboardManager/IQKeyboardManager.h>


@implementation RNKeyboardManager


RCT_EXPORT_MODULE()


RCT_EXPORT_METHOD(enableWithOptions:(NSDictionary*) options)
{
    [IQKeyboardManager sharedManager].enable = true;
    if([(NSNumber*)[options objectForKey:@"shouldResignOnTouchOutside"]boolValue]){
        [IQKeyboardManager sharedManager].shouldResignOnTouchOutside = true;
    }
    NSNumber* distanceFromTextField = (NSNumber*)[options objectForKey:@"keyboardDistanceFromTextField"];
    if(distanceFromTextField){
        [IQKeyboardManager sharedManager].keyboardDistanceFromTextField = distanceFromTextField.floatValue;
    }
    
    NSNumber* preventShowingBottomBlankSpace = (NSNumber*)[options objectForKey:@"preventShowingBottomBlankSpace"];
    if(preventShowingBottomBlankSpace){
        [IQKeyboardManager sharedManager].preventShowingBottomBlankSpace = preventShowingBottomBlankSpace.boolValue;
    }
    
    NSNumber* enableAutoToolbar = (NSNumber*)[options objectForKey:@"enableAutoToolbar"];
    if(enableAutoToolbar){
        [IQKeyboardManager sharedManager].enableAutoToolbar = enableAutoToolbar.boolValue;
    }
    NSNumber* toolbarDoneBarButtonItemText = (NSNumber*)[options objectForKey:@"toolbarDoneBarButtonItemText"];
    if(toolbarDoneBarButtonItemText){
        [IQKeyboardManager sharedManager].toolbarDoneBarButtonItemText = toolbarDoneBarButtonItemText.stringValue;
    }
    
    NSNumber* toolbarManageBehaviour = (NSNumber*)[options objectForKey:@"toolbarManageBehaviour"];
    if(toolbarManageBehaviour){
        [IQKeyboardManager sharedManager].toolbarManageBehaviour = toolbarDoneBarButtonItemText.integerValue;
    }
    NSNumber* shouldToolbarUsesTextFieldTintColor = (NSNumber*)[options objectForKey:@"shouldToolbarUsesTextFieldTintColor"];
    if(shouldToolbarUsesTextFieldTintColor){
        [IQKeyboardManager sharedManager].shouldToolbarUsesTextFieldTintColor = shouldToolbarUsesTextFieldTintColor.boolValue;
    }

}

RCT_EXPORT_METHOD(disable)
{
    [IQKeyboardManager sharedManager].enable = false;
}

@end
  

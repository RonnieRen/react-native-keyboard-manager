
import { NativeModules } from 'react-native';

const { RNKeyboardManager } = NativeModules;
if(!RNKeyboardManager) {
    RNKeyboardManager = {
        enableWithOptions: function(options){

        },
        disable: function(){

        }
    };
}

export default RNKeyboardManager;

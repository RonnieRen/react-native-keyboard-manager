
# react-native-iqkeyboard-manager

## Getting started

`$ npm install react-native-iqkeyboard-manager --save`

### Mostly automatic installation

`$ react-native link react-native-iqkeyboard-manager`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-iqkeyboard-manager` and add `RNKeyboardmanager.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNKeyboardmanager.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<


## Usage
```javascript
import RNKeyboardmanager from 'react-native-iqkeyboard-manager';

//enable keyboard manager
RNKeyboardmanager.enableWithOptions({
    shouldResignOnTouchOutside: true,
    keyboardDistanceFromTextField: 20,
    preventShowingBottomBlankSpace: true,
    enableAutoToolbar: true,
    toolbarDoneBarButtonItemText: "Done",
    toolbarManageBehaviour: 1, // 0,1, 2
    shouldToolbarUsesTextFieldTintColor: true
})

//disable keybard manager
RNKeyboardmanager.disable();

```


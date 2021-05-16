---
to: src/components/index.ts
unless_exists: true
---
export {View, FlatList, ScrollView, TouchableOpacity, Keyboard, StatusBar} from 'react-native';

// MODULES
export {default as Modal} from 'react-native-modal';
export {default as Image} from 'react-native-fast-image';

// CONTROL

// DATAVIEW

// LAYOUT
export {KeyboardAvoidingView} from './layout/KeyboardAvoidingView/KeyboardAvoidingView';

// NAVIGATION

// TYPOGRAPHY
export {Icon} from './typography/Icon/Icon';
export {Text} from './typography/Text/Text';
export {default as TextInput} from './typography/TextInput/TextInput';

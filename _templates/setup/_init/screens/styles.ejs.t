---
to: src/screens/Start/styles.ts
unless_exists: true
---
import {StyleSheet, Dimensions} from 'react-native';

export const {width, height} = Dimensions.get('window');

export default StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
});

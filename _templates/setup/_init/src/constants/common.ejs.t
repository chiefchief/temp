---
to: src/constants/common.ts
unless_exists: true
---
import {Platform} from 'react-native';
import {Easing, Layout} from 'react-native-reanimated';

export const layoutAnimation = Platform.select({
  ios: Layout.duration(250).easing(Easing.bezierFn(0.17, 0.59, 0.4, 0.77)),
  android: undefined,
});

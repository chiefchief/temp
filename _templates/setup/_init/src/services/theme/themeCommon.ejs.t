---
to: src/services/theme/themeCommon.ts
---
import {Platform, ShadowStyleIOS} from 'react-native';

export const themeCommon: TCommon = {
  indent: {
    unit: 8,
  },
  shadow: {
    1: Platform.select({
      ios: {
        shadowOpacity: 0.4,
        shadowOffset: {width: 0.2, height: 2},
        shadowColor: 'gray',
        shadowRadius: 4,
      },
      android: {
        elevation: 4,
      },
    }),
  },
};

export type TCommon = {
  indent: {
    /** @default 8 */
    unit: number;
  };
  shadow: Record<ShadowValues, ShadowStyleIOS | {elevation?: number} | undefined>;
};

type ShadowValues = 1;

---
to: src/services/theme/themeCommon.ts
---
export const themeCommon: TCommon = {
  space: {
    unit: 8,
  },
};

export type TCommon = {
  space: {
    /** @default 8 */
    unit: number;
  };
};

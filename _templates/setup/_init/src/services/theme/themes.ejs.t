---
to: src/services/theme/themes.ts
---
import {StatusBarStyle} from 'react-native';
import {TCommon, themeCommon} from './themeCommon';

export const themeLight: Theme = {
  ...themeCommon,
  statusBarStyle: 'dark-content',
  background: '#999999',
  text: '#FF0000',
};

export const themeDark: Theme = {
  ...themeCommon,
  statusBarStyle: 'light-content',
  background: '#FFFFFF',
  text: '#000000',
};

type ThemeStyle = {
  /** @default light: 'dark-content', dark: 'light-content' */
  statusBarStyle: StatusBarStyle;
  background: string;
  text: string;
};

export type Theme = TCommon & ThemeStyle;

---
to: src/components/typography/Text/Text.tsx
unless_exists: true
---
import React from 'react';
import {Text as RNText, TextProps} from 'react-native';
import {useStyles} from './styles';

export const Text: React.FC<TextProps> = ({style, ...otherProps}) => {
  const {styles} = useStyles();

  return <RNText style={[styles.defaultText, style]} {...otherProps} />;
};

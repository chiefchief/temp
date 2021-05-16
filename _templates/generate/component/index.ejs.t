---
to: src/components/<%= folder %>/<%= h.changeCase.pascal(name) %>/<%= h.changeCase.pascal(name) %>.tsx
---
import React from 'react';
import {View} from '@components';
import styles from './styles';

export const <%= h.changeCase.pascal(name) %>: React.FC<TProps> = () => {
  return <View style={styles.container}>{/* content */}</View>;
};

type TProps = {};

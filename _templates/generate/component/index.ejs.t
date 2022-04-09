---
to: src/components/<%= folder %>/<%= h.changeCase.pascal(name) %>/<%= h.changeCase.pascal(name) %>.tsx
---
import React from 'react';
import {View} from '@components';
import {useStyles} from './styles';

export const <%= h.changeCase.pascal(name) %>: React.FC<<%= h.changeCase.pascal(name) %>Props> = () => {
  const {styles} = useStyles();

  return <View style={styles.container}>{/* content */}</View>;
};

export type <%= h.changeCase.pascal(name) %>Props = {};

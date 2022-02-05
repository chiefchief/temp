---
to: src/screens/<%=h.changeCase.pascal(name)%>/<%=h.changeCase.pascal(name)%>.tsx
---
import React from 'react';
import {useTranslation} from '@hooks';
import {View, Text} from '@components';
import {useStyle} from './styles';

const <%= h.changeCase.pascal(name) %>: React.FC<TProps> = () => {
  const {t} = useTranslation();
  const {styles} = useStyle();

  return (
    <View style={styles.container}>
      <Text><%= h.changeCase.pascal(name) %>Screen</Text>
    </View>
  );
};

export default <%= h.changeCase.pascal(name) %>;

type TProps = {};

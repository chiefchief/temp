---
to: src/screens/<%=h.changeCase.pascal(name)%>/<%=h.changeCase.pascal(name)%>.tsx
---
import React from 'react';
import {useTranslation} from '@hooks';
import {View, Text} from '@components';
import {useStyles} from './styles';

export const <%= h.changeCase.pascal(name) %>: React.FC<<%=h.changeCase.pascal(name)%>Props> = () => {
  const {t} = useTranslation();
  const {styles} = useStyles();

  return (
    <View style={styles.container}>
      <Text><%= h.changeCase.pascal(name) %>Screen</Text>
    </View>
  );
};

export type <%=h.changeCase.pascal(name)%>Props = {};

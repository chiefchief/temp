---
to: src/screens/<%=folder%>/components/<%=h.changeCase.pascal(name)%>/<%=h.changeCase.pascal(name)%>.tsx
---
import React from 'react';
import {View} from '@components';
import {useStyle} from './styles';

export const <%=h.changeCase.pascal(name)%>: React.FC<TProps> = ({}) => {
  const {styles} = useStyle();

  return <View style={styles.container}>{/* content */}</View>;
};

type TProps = {};

---
to: src/screens/Start/Start.tsx
unless_exists: true
---
import React from 'react';
import {useTranslation} from '@hooks';
import {View, Text} from '@components';
import styles from './styles';

export const Start: React.FC<TProps> = () => {
  const {t} = useTranslation();

  return (
    <View style={styles.container}>
      <Text>{t('Welcome Screen')}</Text>
    </View>
  );
};

type TProps = {};

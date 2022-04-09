---
to: src/components/typography/Icon/Icon.tsx
unless_exists: true
---
import React from 'react';
import {createIconSetFromIcoMoon} from 'react-native-vector-icons';
import {IconProps} from 'react-native-vector-icons/Icon';
import icoMoonConfig from './selection.json';
import Animated from 'react-native-reanimated';
import {layoutAnimation} from '@constants';
import {IconName} from './types';

const AnimatedIcon = Animated.createAnimatedComponent(createIconSetFromIcoMoon(icoMoonConfig));

type Props = Omit<IconProps, 'name'> & {
  name: IconName;
};

export const Icon: React.FC<Props> = ({size = 24, ...otherProps}) => (
  <AnimatedIcon layout={layoutAnimation} size={size} {...otherProps} />
);

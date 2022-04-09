---
to: src/components/layout/KeyboardAvoidingView/KeyboardAvoidingView.tsx
unless_exists: true
---
import React from 'react';
import {KeyboardAvoidingView as KAView, KeyboardAvoidingViewProps, Platform} from 'react-native';

// remove 'android:windowSoftInputMode="adjustResize"' from android/app/src/main/AndroidManifest.xml
export const KeyboardAvoidingView: React.FC<TProps> = ({children, iosBehavior, androidBehavior, ...props}) => {
  const behavior: TBehavior = Platform.select({
    ios: iosBehavior || 'padding',
    android: androidBehavior || undefined, // maybe replace with 'height'
  });

  return (
    <KAView behavior={behavior} {...props}>
      {children}
    </KAView>
  );
};

type TProps = {
  iosBehavior?: TBehavior;
  androidBehavior?: TBehavior;
} & KeyboardAvoidingViewProps;

type TBehavior = 'padding' | 'height' | 'position' | undefined;

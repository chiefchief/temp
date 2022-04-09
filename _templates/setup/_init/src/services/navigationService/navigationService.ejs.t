---
to: src/services/navigationService/navigationService.ts
unless_exists: true
---
import {createNavigationContainerRef} from '@react-navigation/native';
import {StackActions} from '@react-navigation/routers';

const navigationRef = createNavigationContainerRef();

function navigate(name: string, params?: unknown) {
  navigationRef.isReady() && navigationRef.navigate(name as never, params as never);
}
function goBack() {
  navigationRef.isReady() && navigationRef.goBack();
}

function push(name: string, params?: unknown) {
  navigationRef.isReady() && navigationRef.dispatch(StackActions.push(name, params as never));
}
function pop(count?: number) {
  navigationRef.isReady() && navigationRef.dispatch(StackActions.pop(count));
}
function popToTop() {
  navigationRef.isReady() && navigationRef.dispatch(StackActions.popToTop());
}

export const navigationService = {
  navigationRef,
  navigate,
  goBack,
  push,
  pop,
  popToTop,
};

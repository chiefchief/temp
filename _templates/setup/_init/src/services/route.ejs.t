---
to: src/services/route.ts
unless_exists: true
---
import {NavigationState, PartialState, createNavigationContainerRef} from '@react-navigation/native';
import {StackActions} from '@react-navigation/routers';

// NEED TO FIX navigate types

export let currentRouteName: string = '';

export const navigationRef = createNavigationContainerRef();
export const onStateChange: TOnStateChange = state => {
  currentRouteName = parseRoute(state);
};

export function navigate(name: string, params?: any) {
  if (navigationRef.isReady()) {
    navigationRef.navigate(name as never, params as never);
  }
}
export function goBack() {
  if (navigationRef.isReady()) {
    navigationRef.goBack();
  }
}
export function reset(name: string, params?: any) {
  if (navigationRef.isReady()) {
    navigationRef.reset({routes: [{name, params}]});
  }
}
export function push(name: string, params?: any) {
  if (navigationRef.isReady()) {
    navigationRef.dispatch(StackActions.push(name, params));
  }
}
export function pop(count?: number) {
  if (navigationRef.isReady()) {
    navigationRef.dispatch(StackActions.pop(count));
  }
}
export function popToTop() {
  if (navigationRef.isReady()) {
    navigationRef.dispatch(StackActions.popToTop());
  }
}

export const parseRoute: TParseRoute = initialState => {
  const state = initialState?.routes[0]?.state || undefined;
  const name = initialState?.routes[0]?.name || 'No Screen Name';
  if (state) {
    return parseRoute(state);
  }

  return name;
};

type TOnStateChange = ((state: NavigationState | undefined) => void) | undefined;
type TParseRoute = (state: NavigationState | PartialState<NavigationState> | undefined) => string;

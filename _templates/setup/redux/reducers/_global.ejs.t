---
to: src/reducers/_global.ts
unless_exists: true
---
import {takeLatest} from 'redux-saga/effects';
import {Initial_global} from './__proto__';
import {AnyAction} from 'redux';

enum _globalTypes {
  LOG_OUT = '[_global] LOG_OUT',
  LOG_IN = '[_global] LOG_IN',
  SET_LOADER = '[_global] SET_LOADER',
  RESET_GLOBAL = '[_global] RESET_GLOBAL',
}

const initialstate = new Initial_global();

export default (state = initialstate, action: AnyAction) => {
  switch (action.type) {
    case _globalTypes.SET_LOADER:
      return new Initial_global({...state, loader: action.loader});
    case _globalTypes.RESET_GLOBAL:
      return initialstate;
    default:
      return state;
  }
};

export const logOut = () => ({type: _globalTypes.LOG_OUT});
export const logIn = () => ({type: _globalTypes.LOG_IN});
export const setLoader = (loader: string) => ({loader, type: _globalTypes.SET_LOADER});
export const resetGlobal = () => ({type: _globalTypes.RESET_GLOBAL});

export function* watch_global() {
  yield takeLatest(_globalTypes.LOG_OUT, logOutAsync);
  yield takeLatest(_globalTypes.LOG_IN, logInAsync);
}

export function* logOutAsync() {
  console.log('logOutAsync');
}

export function* logInAsync() {
  try {
    // yield all([call(logOutAsync), call(logOut)]);
    // yield navigate('Home');
  } catch (e) {
    console.log(e, 'logInAsync ERROR');
  }
}

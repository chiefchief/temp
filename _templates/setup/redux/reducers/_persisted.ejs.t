---
to: src/reducers/_persisted.ts
unless_exists: true
---
import {Initial_persisted} from './__proto__';
import {AnyAction} from 'redux';

enum _persistedTypes {
  CHANGE_TOKEN = '[_persisted] CHANGE_SPLASH',
  RESET_PERSISTED = '[_persisted] RESET_PERSISTED',
}

const initialstate = new Initial_persisted();

export default (state = initialstate, action: AnyAction) => {
  switch (action.type) {
    case _persistedTypes.CHANGE_TOKEN:
      return new Initial_persisted({...state, token: action.token});
    case _persistedTypes.RESET_PERSISTED:
      return initialstate;
    default:
      return state;
  }
};

export const changeToken = (token: string) => ({token, type: _persistedTypes.CHANGE_TOKEN});

export function* watch_persisted() {
  // yield takeLatest(_persistedTypes.LOG_OUT, logOutAsync);
}

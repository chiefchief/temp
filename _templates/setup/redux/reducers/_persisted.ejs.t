---
to: src/reducers/_persisted.ts
unless_exists: true
---
import {INITIAL_PERSISTED} from './__proto__';

enum _persistedTypes {
  CHANGE_TOKEN = '[_persisted] CHANGE_SPLASH',
  RESET_PERSISTED = '[_persisted] RESET_PERSISTED',
}

const initialstate = new INITIAL_PERSISTED();

export default (state = initialstate, action: any) => {
  switch (action.type) {
    case _persistedTypes.CHANGE_TOKEN:
      return new INITIAL_PERSISTED({...state, token: action.token});
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

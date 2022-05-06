---
to: src/reducers/index.ts
unless_exists: true
---
import {combineReducers} from 'redux';
import {TypedUseSelectorHook, useSelector} from 'react-redux';
import _global from './_global';
import _persisted from './_persisted';
// ADD IMPORT

export const rootReducer = combineReducers({
  _global,
  _persisted,
  // ADD NEW REDUCER
});

export type AppState = ReturnType<typeof rootReducer>;
export const useTypedSelector: TypedUseSelectorHook<AppState> = useSelector;
export {rootSaga} from './sagas';

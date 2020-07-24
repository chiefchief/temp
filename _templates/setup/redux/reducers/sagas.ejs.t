---
to: src/reducers/sagas.ts
unless_exists: true
---
import {all} from 'redux-saga/effects';
// ADD IMPORT
import {watch_persisted} from './_persisted';

export default function* rootSaga() {
  yield all([
    // ADD WATCHER
    watch_persisted(),
  ]);
}

---
to: src/reducers/<%=h.changeCase.camelCase(name)%>/<%=h.changeCase.camelCase(name)%>.ts
---
import {takeLatest} from 'redux-saga/effects';
import {Initial<%=h.changeCase.pascal(name)%>} from '../__proto__';
import {AnyAction} from 'redux';

export enum <%=h.changeCase.pascal(name)%>Types {
  GET_<%=h.changeCase.constant(name)%> = '[<%=h.changeCase.camelCase(name)%>] GET_<%=h.changeCase.constant(name)%>',
  SET_<%=h.changeCase.constant(name)%> = '[<%=h.changeCase.camelCase(name)%>] SET_<%=h.changeCase.constant(name)%>',
  RESET_<%=h.changeCase.constant(name)%> = '[<%=h.changeCase.camelCase(name)%>] RESET_<%=h.changeCase.constant(name)%>',
}

const initialstate = new Initial<%=h.changeCase.pascal(name)%>();

export default (state = initialstate, action: AnyAction) => {
  switch (action.type) {
    case <%=h.changeCase.pascal(name)%>Types.SET_<%=h.changeCase.constant(name)%>:
      return new Initial<%=h.changeCase.pascal(name)%>({...state, value: action.value});
    case <%=h.changeCase.pascal(name)%>Types.RESET_<%=h.changeCase.constant(name)%>:
      return initialstate;
    default:
      return state;
  }
};

export const get<%=h.changeCase.pascal(name)%> = () => ({type: <%=h.changeCase.pascal(name)%>Types.GET_<%=h.changeCase.constant(name)%>});
export const set<%=h.changeCase.pascal(name)%> = (value: string) => ({value, type: <%=h.changeCase.pascal(name)%>Types.SET_<%=h.changeCase.constant(name)%>});
export const reset<%=h.changeCase.pascal(name)%> = () => ({type: <%=h.changeCase.pascal(name)%>Types.RESET_<%=h.changeCase.constant(name)%>});

export function* watch<%=h.changeCase.pascal(name)%>() {
  yield takeLatest(<%=h.changeCase.pascal(name)%>Types.GET_<%=h.changeCase.constant(name)%>, get<%=h.changeCase.pascal(name)%>Async);
}

export function* get<%=h.changeCase.pascal(name)%>Async() {
  // const { accessToken } = yield select(state => state.profile)
}

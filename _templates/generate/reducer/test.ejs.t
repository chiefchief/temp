---
to: src/reducers/<%=h.changeCase.camelCase(name)%>/<%=h.changeCase.camelCase(name)%>.spec.ts
---
import {Initial<%=h.changeCase.pascal(name)%>} from '../__proto__';
import {takeLatest} from 'redux-saga/effects';
import <%=h.changeCase.camelCase(name)%>, {
  get<%=h.changeCase.pascal(name)%>,
  set<%=h.changeCase.pascal(name)%>,
  reset<%=h.changeCase.pascal(name)%>,
  <%=h.changeCase.pascal(name)%>Types,
  watch<%=h.changeCase.pascal(name)%>,
  get<%=h.changeCase.pascal(name)%>Async,
} from './<%=h.changeCase.camelCase(name)%>';

jest.useFakeTimers();

const reducer = (obj?: Partial<Initial<%=h.changeCase.pascal(name)%>>) => new Initial<%=h.changeCase.pascal(name)%>(obj);

describe('<%=h.changeCase.camelCase(name)%>', () => {
  describe('reducer', () => {
    it('should return initial state', () => {
      expect(<%=h.changeCase.camelCase(name)%>(undefined, {type: 'Any type'})).toEqual(reducer());
    });
    it('should set value', () => {
      expect(<%=h.changeCase.camelCase(name)%>(undefined, set<%=h.changeCase.pascal(name)%>(''))).toEqual(reducer({value: ''}));
    });
    it('should reset reducer', () => {
      expect(<%=h.changeCase.camelCase(name)%>(undefined, reset<%=h.changeCase.pascal(name)%>())).toEqual(reducer());
    });
  });

  describe('actions', () => {
    it('should call get action', () => {
      expect(get<%=h.changeCase.pascal(name)%>()).toEqual({type: <%=h.changeCase.pascal(name)%>Types.GET_<%=h.changeCase.constant(name)%>});
    });
    it('should call set action', () => {
      expect(set<%=h.changeCase.pascal(name)%>('')).toEqual({value: '', type: <%=h.changeCase.pascal(name)%>Types.SET_<%=h.changeCase.constant(name)%>});
    });
    it('should call reset action', () => {
      expect(reset<%=h.changeCase.pascal(name)%>()).toEqual({type: <%=h.changeCase.pascal(name)%>Types.RESET_<%=h.changeCase.constant(name)%>});
    });
  });

  describe('watcher', () => {
    const gen = watch<%=h.changeCase.pascal(name)%>();
    it('should wait for GET_<%=h.changeCase.constant(name)%> and call logInAsync', () => {
      expect(gen.next().value).toEqual(takeLatest(<%=h.changeCase.pascal(name)%>Types.GET_<%=h.changeCase.constant(name)%>, get<%=h.changeCase.pascal(name)%>Async));
    });

    it('should be done', () => {
      expect(gen.next().done).toBeTruthy();
    });
  });

  describe('workers', () => {
    it('should get<%=h.changeCase.pascal(name)%>Async', () => {
      const gen = get<%=h.changeCase.pascal(name)%>Async();
      expect(gen.next().done).toBeTruthy();
    });
  });
});

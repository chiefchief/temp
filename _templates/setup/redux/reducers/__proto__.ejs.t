---
to: src/reducers/__proto__.ts
unless_exists: true
---
export const INITIAL_PERSISTED: (data?: any) => T_Persisted = (data = {}) => ({
  token: data.token || '',
  // ...other params if you need
  name: data.name || '',
});

type T_Persisted = {
  token: string;
  name: string;
};

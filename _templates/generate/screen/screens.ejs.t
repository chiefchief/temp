---
inject: true
to: src/screens/Screens.ts
after: export enum Screens
---
  <%= h.changeCase.pascal(name) %> = '<%= h.changeCase.pascal(name) %>',
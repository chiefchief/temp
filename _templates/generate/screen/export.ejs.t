---
inject: true
to: src/screens/index.ts
append: true
skip_if: <%= h.changeCase.pascal(name) %>
---
export {<%= h.changeCase.pascal(name) %>} from './<%= h.changeCase.pascal(name) %>/<%= h.changeCase.pascal(name) %>';
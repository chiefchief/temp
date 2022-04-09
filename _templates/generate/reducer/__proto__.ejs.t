---
inject: true
to: src/reducers/__proto__.ts
append: true
---

export class Initial<%=h.changeCase.pascal(name)%> {
  constructor(data: Partial<Initial<%=h.changeCase.pascal(name)%>> = {}) {
    this.value = data.value ?? '';
  }
  value: string;
}
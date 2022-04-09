---
to: src/reducers/__proto__.ts
unless_exists: true
---
export class Initial_global {
  constructor(data: Partial<Initial_global> = {}) {
    this.loader = data.loader ?? false;
  }
  loader: boolean;
}

export class Initial_persisted {
  constructor(data: Partial<Initial_persisted> = {}) {
    this.token = data.token ?? '';
  }
  token: string;
}

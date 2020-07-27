---
inject: true
to: package.json
before: scripts
skip_if: commitlint -E HUSKY_GIT_PARAMS
---
,"husky": {
    "hooks": {
      "commit-msg": "commitlint -E HUSKY_GIT_PARAMS"
    }
  },
  "commitlint": {
    "extends": [
      "@commitlint/config-conventional"
    ]
  }
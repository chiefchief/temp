---
inject: true
to: /android/app/build.gradle
after: defaultConfig {
skip_if: multiDexEnabled true
---
	multiDexEnabled true
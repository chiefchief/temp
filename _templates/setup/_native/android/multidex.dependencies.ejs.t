---
inject: true
to: android/app/build.gradle
after: dependencies {
skip_if: androidx.multidex
---
	implementation 'androidx.multidex:multidex:2.0.1'
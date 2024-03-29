---
inject: true
to: package.json
after: scripts
skip_if: watchman
---
    "android_release_apk": "cd android && ./gradlew clean && ./gradlew assembleRelease && cd ../",
    "android_release_bundle": "cd android && ./gradlew clean && ./gradlew bundleRelease && cd ../",
    "pod_clean": "cd ios && pod deintegrate && pod clean && pod install && cd ../",
    "postinstall": "npm run pod_clean",
    "reinstall": "watchman watch-del-all && rm -rf $TMPDIR/react-* && rm -rf node_modules/ && rm -rf package-lock.json && npm cache verify && npm install && npm start -- --reset-cache",
    "h:component": "hygen generate component",
    "h:reducer": "hygen generate reducer",
    "h:screen": "hygen generate screen",
    "h:screen-component": "hygen generate screen-component",
    "update:icons": "node src/components/typography/Icon/generateSet.js",
    "tsc": "tsc",
    "format": "prettier . --write",
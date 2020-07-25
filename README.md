# Get Started

* [Initialization](#Initialization)
* [Splash screen](#Splash-screen)

## Initialization
1) Initialize project
```
npx react-native init AwesomeTSProject --template react-native-template-typescript
```

2) Navigate to your project folder and paste this code
```
git clone git@github.com:chiefchief/temp.git && cp -rf ./temp/_templates ./ && cp -f ./temp/initialize.js ./ && rm -rf temp && rm -f App.tsx && npm install enquirer --save-dev && node ./initialize.js  
```

3) Install "husky" and add at the end of package.json
```
npm install husky --save-dev

"husky": {
    "hooks": {
      "commit-msg": "commitlint -E HUSKY_GIT_PARAMS"
    }
  },
  "commitlint": {
    "extends": [
      "@commitlint/config-conventional"
    ]
  }
```

## Splash screen
[Use this library](https://github.com/zoontek/react-native-bootsplash)

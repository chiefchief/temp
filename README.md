# Initialization
1) npx react-native init AwesomeTSProject --template react-native-template-typescript

Navigate to your project folder and paste this code
2) git clone git@github.com:chiefchief/temp.git && cp -rf ./temp/_templates ./ && cp -f ./temp/initialize.js ./ && rm -rf temp && rm -f App.tsx && npm install enquirer --save-dev && node ./initialize.js  

Add at the end of package.json
3) 
```
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

# Splash screen
https://github.com/zoontek/react-native-bootsplash

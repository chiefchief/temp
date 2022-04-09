---
to: src/components/typography/Icon/generateSet.js
unless_exists: true
---
const fs = require('fs');
const {execSync} = require('child_process');
const iconset = require('./selection.json');

(() => {
  const glyphMap = iconset.icons.reduce((accumulator, currentValue) => {
    const {name} = currentValue.properties;
    return `${accumulator}\n  | '${name}'`;
  }, '');

  let data = `export type IconName =${glyphMap};\n`;

  fs.writeFile(`${__dirname}/types.ts`, data, err => {
    if (err) {
      console.log(err);
    } else {
      execSync('npx react-native link', {stdio: 'inherit'});
    }
  });
})();
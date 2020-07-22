const {
  prompt,
  Confirm,
  Input,
  Snippet,
  Toggle,
  Select,
  Scale,
  Survey,
  Quiz,
  AutoComplete,
  BasicAuth,
} = require('enquirer');
// live-plugin-manager AS ALTERNATIVE
// const {exec, execSync, spawn} = require('child_process');
const util = require('util');
const exec = util.promisify(require('child_process').exec);

(async () => {
  // exec('npm install --save react-native-image-gallery', (err, stdout, stderr) => {
  //   if (err) {
  //     console.error(err);
  //     return;
  //   }
  //   console.log(stdout, 'STDOUT');
  //   console.log(stderr, 'STDERR');
  // });

  // YOU CAN TRY THIS
  // const a = await execSync('npm install --save react-native-image-gallery');
  // console.log(a, 'AAAA');

  // WELL WORKING
  // const {error, stdout, stderr} =
  const a = await exec('npm install --save react-native-image-gallery');
  console.log(a, 'AAAA');

  // PROMPT
  // const {name, bundleName} = await prompt([
  //   {
  //     type: 'input',
  //     name: 'name',
  //     message: 'App Display Name:',
  //   },
  //   {
  //     type: 'input',
  //     name: 'bundleName',
  //     message: 'App Bundle Identifier:',
  //   },
  // ]);

  // TRUE OR FALSE
  // const confir = await new Confirm({
  //   name: 'question',
  //   message: 'Did you like enquirer?',
  // }).run();

  // INPUT
  // const prom = await new Input({
  //   name: 'username',
  //   message: 'What is your username?',
  //   initial: 'jonschlinkert', // AUTO HELPER
  // }).run();

  // AUTOCOMPLETE
  // const autocomplete = await new AutoComplete({
  //   name: 'flavor',
  //   message: 'Pick your favorite flavor',
  //   limit: 10,
  //   initial: 2,
  //   choices: [
  //     'Almond',
  //     'Apple',
  //     'Banana',
  //     'Blackberry',
  //     'Blueberry',
  //     'Cherry',
  //     'Chocolate',
  //     'Cinnamon',
  //     'Coconut',
  //     'Cranberry',
  //     'Grape',
  //     'Nougat',
  //     'Orange',
  //     'Pear',
  //     'Pineapple',
  //     'Raspberry',
  //     'Strawberry',
  //     'Vanilla',
  //     'Watermelon',
  //     'Wintergreen',
  //   ],
  // }).run();

  // BASIC AUTH
  // const bAuth = await new BasicAuth({
  //   name: 'password',
  //   message: 'Please enter your password',
  //   username: 'someee',
  //   password: '123',
  //   showPassword: true,
  // }).run();

  // QUIZ
  // const quiz = await new Quiz({
  //   name: 'countries',
  //   message: 'How many countries are there in the world?',
  //   choices: ['165', '175', '185', '195', '205'],
  //   correctChoice: 3,
  // }).run();

  // SURVEY
  // const surv = await new Survey({
  //   name: 'experience',
  //   message: 'Please rate your experience',
  //   scale: [
  //     {name: '1', message: 'Strongly Disagree'},
  //     {name: '2', message: 'Disagree'},
  //     {name: '3', message: 'Neutral'},
  //     {name: '4', message: 'Agree'},
  //     {name: '5', message: 'Strongly Agree'},
  //   ],
  //   margin: [0, 0, 0, 0],
  //   choices: [
  //     {
  //       name: 'interface',
  //       message: 'The website has a friendly interface.',
  //     },
  //     {
  //       name: 'navigation',
  //       message: 'The website is easy to navigate.',
  //     },
  //     {
  //       name: 'images',
  //       message: 'The website usually has good images.',
  //     },
  //     {
  //       name: 'upload',
  //       message: 'The website makes it easy to upload images.',
  //     },
  //     {
  //       name: 'colors',
  //       message: 'The website has a pleasing color palette.',
  //     },
  //   ],
  // }).run();

  // SCALE
  // const scal = await new Scale({
  //   name: 'experience',
  //   message: 'Please rate your experience',
  //   scale: [
  //     {name: '1', message: 'Strongly Disagree'},
  //     {name: '2', message: 'Disagree'},
  //     {name: '3', message: 'Neutral'},
  //     {name: '4', message: 'Agree'},
  //     {name: '5', message: 'Strongly Agree'},
  //   ],
  //   margin: [0, 0, 2, 1],
  //   choices: [
  //     {
  //       name: 'interface',
  //       message: 'The website has a friendly interface.',
  //       initial: 2,
  //     },
  //     {
  //       name: 'navigation',
  //       message: 'The website is easy to navigate.',
  //       initial: 2,
  //     },
  //     {
  //       name: 'images',
  //       message: 'The website usually has good images.',
  //       initial: 2,
  //     },
  //     {
  //       name: 'upload',
  //       message: 'The website makes it easy to upload images.',
  //       initial: 2,
  //     },
  //     {
  //       name: 'colors',
  //       message: 'The website has a pleasing color palette.',
  //       initial: 2,
  //     },
  //   ],
  // }).run();

  // SNIPPET
  // const snip = await new Snippet({
  //   name: 'username',
  //   message: 'Fill out the fields in package.json',
  //   required: true,
  //   fields: [
  //     {
  //       name: 'author_name',
  //       message: 'Author Name',
  //     },
  //     {
  //       name: 'version',
  //       message: 'Version value',
  //     },
  //   ],
  //   template: `{
  //   "name": "\${name}",
  //   "description": "\${description}",
  //   "version": "\${version}",
  //   "homepage": "https://github.com/\${username}/\${name}",
  //   "author": "\${author_name} (https://github.com/\${username})",
  //   "repository": "\${username}/\${name}",
  //   "license": "\${license:ISC}"
  // }
  // `,
  // }).run();

  // TOGGLE   -------------------> GOOD CHOICE FOR ONE OF TWO
  // const togl = await new Toggle({
  //   message: 'Want to answer?',
  //   enabled: 'Redux Saga',
  //   disabled: 'Reactn',
  // }).run();

  // SELECT
  // const select = await new Select({
  //   name: 'color',
  //   message: 'Pick a flavor',
  //   choices: ['apple', 'grape', 'watermelon', 'cherry', 'orange'],
  // }).run();

  // TRY WITH PROMPT TOGGLE  ---------> WORKS FINE
  // const {togled} = await prompt([
  //   {
  //     type: 'toggle',
  //     name: 'togled',
  //     message: 'Which reducer to use? ',
  //     enabled: 'Redux Saga',
  //     disabled: 'Reactn',
  //   },
  // ]);

  // console.log(name, '---> name');
  // console.log(bundleName, '---> bundleName');
  // console.log(confir, '---> confir');
  // console.log(prom, '---> prom');
  // console.log(autocomplete, '---> autocomplete');
  // console.log(bAuth, '---> bAuth');
  // console.log(quiz, '---> quiz');
  // console.log(surv, '---> surv');
  // console.log(scal, '---> scal');
  // console.log(select, '---> select');
  // console.log(snip, '---> snip');
  // console.log(togl, '---> togl');
  // console.log(togled, '---> togled');
  console.log('Finished!!--->');
})();

// const child = execSync('npm install react-native-image-picker --save', function (error, stdout, stderr) {
//   console.log('stdout: ' + stdout);
//   console.log('stderr: ' + stderr);
//   if (error !== null) {
//     console.log('exec error: ' + error);
//   }
// });

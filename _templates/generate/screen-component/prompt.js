module.exports = [
  {
    type: 'input',
    name: 'name',
    message: 'Enter component name...',
  },
  {
    type: 'select',
    name: 'folder',
    message: 'Select screen folder...',
    choices: [
      'Start',
      'Login',
      'Registration',
      'Splash',
      //ADD MORE SCREENS
    ],
  },
];

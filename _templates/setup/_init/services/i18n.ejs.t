---
to: src/services/i18n.ts
unless_exists: true
---
import i18n from 'i18next';
import {initReactI18next} from 'react-i18next';
import {langiages} from '@constants';

const en = require('./localization/en.json');

const defaultLanguage = 'en';

export default i18n.use(initReactI18next).init({
  resources: {
    [languages.EN]: {translation: en},
  },
  lng: defaultLanguage,
  fallbackLng: languages.EN,
  react: {
    wait: true,
    nsMode: 'default',
  },
  interpolation: {
    escapeValue: false, // react already safes from xss
  },
  nsSeparator: false,
  keySeparator: false,
  debug: true, // DISABLE EIF NO NEED LOGS
});

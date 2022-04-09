---
to: src/services/localization/i18n.ts
unless_exists: true
---
import {initReactI18next} from 'react-i18next';
import i18n from 'i18next';
import {Languages} from '@constants';
import en from './en.json';

const defaultLanguage = Languages.en;

export default i18n.use(initReactI18next).init({
  compatibilityJSON: 'v3',
  resources: {
    [Languages.en]: {translation: en},
  },
  lng: defaultLanguage,
  fallbackLng: Languages.en,
  react: {
    nsMode: 'default',
  },
  interpolation: {
    escapeValue: false, // react already safes from xss
  },
  nsSeparator: false,
  keySeparator: false,
  debug: true, // DISABLE EIF NO NEED LOGS
});

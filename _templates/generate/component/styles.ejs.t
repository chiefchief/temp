---
to: src/components/<%= folder %>/<%= h.changeCase.pascal(name) %>/styles.ts
---
import {makeStyles} from '@services';

export const useStyles = makeStyles(theme => ({
  container: {
    backgroundColor: theme.appBackground,
  },
}));

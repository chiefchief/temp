---
to: src/screens/<%=folder%>/components/styles.ts
---
import {makeStyles} from '@services';

export const useStyles = makeStyles(theme => ({
  container: {
    backgroundColor: theme.appBackground,
  },
}));

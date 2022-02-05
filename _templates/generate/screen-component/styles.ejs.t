---
to: src/screens/<%=folder%>/components/<%=h.changeCase.pascal(name)%>/styles.ts
---
import {makeStyles} from '@services';

export const useStyle = makeStyles(theme => ({
  container: {
    backgroundColor: theme.appBackground,
  },
}));

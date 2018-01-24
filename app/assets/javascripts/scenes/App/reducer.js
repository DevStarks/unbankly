import { combineReducers } from 'redux';
import { reduxTokenAuthReducer } from 'redux-token-auth';

const reducer = combineReducers({
  reduxTokenAuth: reduxTokenAuthReducer
});

export default reducer;

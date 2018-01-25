import { combineReducers } from 'redux';
import navReducer from './navigation/reducer';
import { reducer as AuthReducer } from '../Auth';

export default combineReducers({
  auth: AuthReducer,
  navigation: navReducer
});

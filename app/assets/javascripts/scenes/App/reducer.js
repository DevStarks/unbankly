import { combineReducers } from 'redux';
import navReducer from './navigation/reducer';
import AuthReducer from '../Auth/reducer.js';

export default combineReducers({
  auth: AuthReducer,
  navigation: navReducer
});

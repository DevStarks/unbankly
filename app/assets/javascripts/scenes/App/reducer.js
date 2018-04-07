import { combineReducers } from 'redux';
import navReducer from './navigation/reducer';
import AuthReducer from '../Auth/reducer.js';

export const initialState = {
  auth: AuthReducer.initialState,
  navigation: navReducer.initialState
};

export default combineReducers({
  auth: AuthReducer,
  navigation: navReducer
});

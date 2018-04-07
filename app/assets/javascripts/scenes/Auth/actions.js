import { LOGIN, SIGNUP } from './action-types.js';
import * as API from './api';

export const login = (email, password) => {
  return {
    type: LOGIN,
    promise: API.login(email, password)
  };
};

export const signup = (email, password) => {
  return {
    type: SIGNUP,
    promise: API.signup(email, password)
  };
};

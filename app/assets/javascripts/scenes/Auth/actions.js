import Constant from 'react-constant';
import API from './api';
const constants = Constant('Auth');

export const login = (email, password) => {
  return {
    type: constants.LOGIN,
    promise: API.login(email, password)
  };
};

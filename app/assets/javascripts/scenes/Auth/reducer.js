import navReducer from './navigation/reducer';

export const initialState = {
  navigation: navReducer,
  token: null,
  userSignedIn: null,
  attributes: {}
};

export default (state = initialState, action) => {
  switch (action.type) {
    case '':

      break;
    default:
      return state;
  }
};
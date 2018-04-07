import { initialState as reducerInitialState } from './navigation/reducer';
import { LOGIN } from './action-types';
import { handle } from 'redux-pack';


export const initialState = {
  navigation: reducerInitialState,
  token: null,
  userSignedIn: null,
  attributes: {}
};

export default (state = initialState, action) => {
  const { type, payload } = action;

  switch (type) {
    case LOGIN:
      return handle(state, action, {
        start: prevState => ({ ...prevState, isLoading: true }),
        finish: prevState => ({ ...prevState }),
        failure: prevState => {
          const asdf = action.payload
          debugger

          return prevState
        },
        success: prevState => ({ ...prevState })
      });
      break;
    default:
      return state;
  }
};

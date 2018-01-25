import navigator from './navigator';

const actionForPathAndParams = navigator.router.getActionForPathAndParams('Login');
export const initialState = navigator.router.getStateForAction(actionForPathAndParams);

export default (state = initialState, action) => {
  const nextState = navigator.router.getStateForAction(action, state);

  return nextState || state;
};

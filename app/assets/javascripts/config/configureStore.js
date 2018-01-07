import { browserHistory } from 'react-router';
import { applyMiddleware, createStore } from 'redux';
import { routerMiddleware as createRouterMiddleware } from 'react-router-redux';
import thunk from 'redux-thunk';
import { createLogger } from 'redux-logger';
import { AppReducer } from '../modules/App';


const logger = createLogger();
const routerMiddleware = createRouterMiddleware(browserHistory);

export default (initialState) => {
  return createStore(
    AppReducer,
    initialState,
    applyMiddleware(routerMiddleware, thunk, logger)
  );
};

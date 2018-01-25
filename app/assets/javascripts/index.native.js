import React from 'react';
import { Provider } from 'react-redux';
import configureStore from './config/configure-store';
import { reducer } from './scenes/App';
import App from './scenes/App';

const store = configureStore(reducer.initialState);

const UnbanklyApp = () => {
  return (
    <Provider store={store}>
      <App />
    </Provider>
  );
};

export default UnbanklyApp;

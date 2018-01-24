import React from 'react';
import { Provider } from 'react-redux';
import configureStore from './config/configure-store';
import initialState from './config/initial-state';
import App from './scenes/App';
import { verifyCredentials } from './config/redux/token-auth-config';

const store = configureStore(initialState);
verifyCredentials(store);

const UnbanklyApp = () => {
  return (
    <Provider store={store}>
      <App />
    </Provider>
  );
};

export default UnbanklyApp;

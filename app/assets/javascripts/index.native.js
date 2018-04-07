import React from 'react';
import { Provider } from 'react-redux';
import configureStore from './config/configure-store';
import { initialState } from './scenes/App/reducer';
import App from './scenes/App';

const store = configureStore(initialState);

// To see all the requests in the chrome Dev tools in the network tab.
XMLHttpRequest = GLOBAL.originalXMLHttpRequest ?
    GLOBAL.originalXMLHttpRequest :
    GLOBAL.XMLHttpRequest;

  // fetch logger
global._fetch = fetch;
global.fetch = function (uri, options, ...args) {
  return global._fetch(uri, options, ...args).then((response) => {
    console.log('Fetch', { request: { uri, options, ...args }, response });
    return response;
  });
};

const UnbanklyApp = () => {

  return (
    <Provider store={store}>
      <App />
    </Provider>
  );
};

export default UnbanklyApp;

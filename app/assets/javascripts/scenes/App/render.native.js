import React from 'react';
import { connect } from 'react-redux';
import { mapStateToProps } from './container.js';
import { addNavigationHelpers } from 'react-navigation';
import { AppNavigator } from './navigation/navigator';


const App = function ({ dispatch, nav }) {
  return (
    <AppNavigator navigation={addNavigationHelpers({ dispatch, state: nav })} />
  );
};

export default connect(mapStateToProps)(App);

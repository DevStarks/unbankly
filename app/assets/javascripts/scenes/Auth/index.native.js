import React from 'react';
import { connect } from 'react-redux';
import { mapStateToProps } from './container.js';
import { addNavigationHelpers } from 'react-navigation';


const Auth = function ({ dispatch, nav }) {
  return (
    <AuthNavigator navigation={addNavigationHelpers({ dispatch, state: nav })} />
  );
};

export default connect(mapStateToProps)(Auth);

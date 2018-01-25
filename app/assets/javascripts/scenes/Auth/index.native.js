import React from 'react';
import { Text } from 'react-native';
import { connect } from 'react-redux';
import { mapStateToProps } from './container';
import AuthNavigator from './navigation/navigator';
import { addNavigationHelpers } from 'react-navigation';


const Auth = function ({ dispatch, navigation }) {
  return (
    <AuthNavigator navigation={addNavigationHelpers({ dispatch, state: navigation })} />
  );
};

export default connect(mapStateToProps)(Auth);

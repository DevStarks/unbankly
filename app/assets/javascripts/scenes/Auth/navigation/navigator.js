import { StackNavigator } from 'react-navigation';
import Login from '../scenes/Login';

const AppRouteConfigs = {
  Login: {
    screen: Login
  }
};

const StackNavigatorConfigs = {
  initialRouteName: 'Login'
};

export default StackNavigator(AppRouteConfigs, StackNavigatorConfigs);

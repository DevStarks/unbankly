import { StackNavigator } from 'react-navigation';
import Login from '../scenes/Login';

const AppRouteConfigs = {
  Login: {
    screen: Login
  }
};

const StackNavigatorConfigs = {
  initialRouteName: 'Login',
  headerMode: 'none'
};

export default StackNavigator(AppRouteConfigs, StackNavigatorConfigs);

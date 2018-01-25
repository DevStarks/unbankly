import { StackNavigator } from 'react-navigation';
import Auth from '../../Auth';

const AppRouteConfigs = {
  Auth: {
    screen: Auth
  }
};

const StackNavigatorConfigs = {
  initialRouteName: 'Auth',
  headerMode: 'none'
};

export default StackNavigator(AppRouteConfigs, StackNavigatorConfigs);

import React from 'react';
import TextInput from '../../../../components/TextInput';
import Button from '../../../../components/Button';
import { Text, View } from 'react-native';
import connect from './container';


const Login = function () {
  const onPress = () => {
    
  };

  return (
    <View>
      <TextInput placeholder='email'/>
      <TextInput placeholder='password'/>
      <Button title='Submit' onPress={onPress}/>
    </View>
  );
};

export default connect(Login);

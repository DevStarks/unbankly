import React, { Component } from 'react';
import TextInput from '../../../../components/TextInput';
import Button from '../../../../components/Button';
import { Text, View } from 'react-native';
import connect from './container';


class Login extends Component {
  constructor(props) {
    super(props);

    this.state = {
      email: '',
      password: '',
      registration: true
    };
  }

  onChange(attr) {
    return (value) => {
      this.setState({ [attr]: value });
    };
  }

  onPress() {
    const action = this.state.registration ? this.props.signup : this.props.login ;
    action(this.state.email, this.state.password);
  }

  render() {
    return (
      <View>
        <TextInput onChangeText={this.onChange('email')} placeholder='email'/>
        <TextInput onChangeText={this.onChange('password')} placeholder='password' secureTextEntry={true} />
        <Button title={this.state.registration ? 'Sign up' : 'Sign in'} onPress={() => this.onPress()} />
      </View>
    );
  }
}

export default connect(Login);

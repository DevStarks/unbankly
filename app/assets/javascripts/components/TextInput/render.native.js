import React, { Component } from 'react';
import {
  StyleSheet,
  TextInput
} from 'react-native';

const styles = StyleSheet.create({
  input: {
    height: 40
  }
});

class TextInputWrapper extends Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (
      <TextInput style={styles.input} {...this.props}/>
    );
  }
}

export default TextInputWrapper;

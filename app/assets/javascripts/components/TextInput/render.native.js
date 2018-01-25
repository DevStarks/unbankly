import React from 'react';
import {
  StyleSheet,
  TextInput
} from 'react-native';

const styles = StyleSheet.create({
  input: {
    height: 40
  }
});

export default function (props) {
  return (
    <TextInput style={styles.input} {...props}/>
  );
}

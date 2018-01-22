import React from 'react';
import {
  StyleSheet,
  TextInput
} from 'react-native';

const styles = StyleSheet.create({
  input: {
    flex: 1
  }
});

export default function (props) {
  return (
    <TextInput style={styles.input} {...props}/>
  );
}

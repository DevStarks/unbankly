import React from 'react';
import {
  StyleSheet,
  Button
} from 'react-native';

const styles = StyleSheet.create({
  button: {
    // height: 40
  }
});

const ButtonComponent = function (props) {
  return (
    <Button style={styles.button} {...props}/>
  );
};

export default ButtonComponent;

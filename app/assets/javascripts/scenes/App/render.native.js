import React from 'react';
import {
  Platform,
  StyleSheet,
  Image,
  Text,
  View
} from 'react-native';
import TextInput from '../TextInput';

const styles = StyleSheet.create({
  container: {
    // marginTop: Platform.OS === 'ios' ? 200 : 0,
    flex: 1
  },
  image: {
    flex: 1
  }
});

export default function () {
  return (
    <View style={styles.container}>
      <Image style={styles.image}/>

      <TextInput />
    </View>
  );
}

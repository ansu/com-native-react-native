/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

 import React, { Component } from 'react';
 import {
   AppRegistry,
   StyleSheet,
   Text,
   View
 } from 'react-native';
 import Button from './src/components/Button';

 import { NativeModules, NativeEventEmitter } from 'react-native';
 console.log('Calendar Manager', NativeModules.CalendarManager);
 // const calendarManagerEmitter = new NativeEventEmitter(NativeModules.CalendarManager);
 // const subscription = calendarManagerEmitter.addListener(
 //     'EventReminder',
 //     (reminder) => {
 //         console.log('EVENT')
 //         console.log('name: ' + reminder.name)
 //         console.log('location: ' + reminder.location)
 //         console.log('date: ' + reminder.date)
 //     }
 // );
 // NativeModules.CalendarManager.addEvent("One", "Two", 3, function(o) {
 //     console.log('In Callback', o);
 // });
 NativeModules.CalendarManager.addEvent("One", "Two", 3);

 export default class demo extends Component {
   render() {
     return (
       <View style={styles.container}>
         <Text style={styles.welcome}>
           Welcome to React Native!
         </Text>
         <Text style={styles.instructions}>
           To get started, edit index.ios.js
         </Text>
         <Text style={styles.instructions}>
           Press Cmd+R to reload,{'\n'}
           Cmd+D or shake for dev menu
         </Text>

         <Button onPress={ () => NativeModules.CalendarManager.pushVC()}>
           Push VC
         </Button>
       </View>
     );
   }
 }

 const styles = StyleSheet.create({
   container: {
     flex: 1,
     justifyContent: 'center',
     alignItems: 'center',
     backgroundColor: '#F5FCFF',
   },
   welcome: {
     fontSize: 20,
     textAlign: 'center',
     margin: 10,
   },
   instructions: {
     textAlign: 'center',
     color: '#333333',
     marginBottom: 5,
   },
 });
 AppRegistry.registerComponent('demo', () => demo);

import React, {Component} from 'react';
import {Text, View, StyleSheet} from 'react-native';
import { NavigationContainer } from '@react-navigation/native';
import { createBottomTabNavigator } from '@react-navigation/bottom-tabs';
import Home from '../components/Home';

const Tab = createBottomTabNavigator();

class HomePageContainer extends Component {
  constructor(props) {
    super(props);

    this.loginHideAndShow = this.loginHideAndShow.bind(this);
  }

  loginHideAndShow() {
    this.props.navigation.navigate('LogIn');
  }

  render() {
    return (
       <NavigationContainer independent={true}>
            <Tab.Navigator>
                <Tab.Screen name="Home" component={Home} />
            </Tab.Navigator>
        </NavigationContainer>
    );
  }
}

const styles = StyleSheet.create({
    homePageContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  }
});

export default HomePageContainer;
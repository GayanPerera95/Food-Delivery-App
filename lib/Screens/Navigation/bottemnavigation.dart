
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/DashBoard/cart_screen.dart';
import 'package:food_delivery/Screens/DashBoard/contact_screen.dart';
import 'package:food_delivery/Screens/DashBoard/home_screen.dart';
import 'package:food_delivery/Screens/DashBoard/notification_screen.dart';
import 'package:food_delivery/Screens/DashBoard/setting_screen.dart';

import '../../constants.dart';

class MyBottomNavigationBarState extends StatefulWidget {
  const MyBottomNavigationBarState({ key }) : super(key: key);

  @override
  __MyBottomNavigationBarStateState createState() => __MyBottomNavigationBarStateState();
}

class __MyBottomNavigationBarStateState extends State<MyBottomNavigationBarState> {

int _currentIndex = 0;
final List<Widget> _children = [
  HomeScreen(),
  ContactScreen(),
  NotificationScreen(),
  CartScreen(),
  SettingScreen()
  

];

void onTappedBar(int index){
  setState(() {
    _currentIndex = index;
  });
}


  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: _children [_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTappedBar,
        currentIndex: _currentIndex,
        selectedItemColor: kPromaryColour,
     
        items: [
           
            BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text("Home"),
            backgroundColor: Colors.black26
            ),
            BottomNavigationBarItem(
            icon: new Icon(Icons.contact_phone),
            title: new Text("Contact"),
            backgroundColor: Colors.black26
            ),
            BottomNavigationBarItem(
            icon: new Icon(Icons.notification_important),
            title: new Text("Notification"),
            backgroundColor: Colors.black26
            ),
            BottomNavigationBarItem(
            icon: new Icon(Icons.shopping_cart),
            title: new Text("Cart"),
            backgroundColor: Colors.black26
            ),
            BottomNavigationBarItem(
            icon: new Icon(Icons.settings),
            title: new Text("Setting"),
            backgroundColor: Colors.black26
            )
            
        ] 
        ),
      
    );
  }
}


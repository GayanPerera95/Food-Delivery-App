import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_delivery/Screens/DashBoard/account.dart';
import 'package:food_delivery/Screens/DashBoard/cart.dart';
import 'package:food_delivery/Screens/DashBoard/chat.dart';
import 'package:food_delivery/Screens/DashBoard/feed.dart';
import 'package:food_delivery/Screens/Widgets/food_category.dart';
import 'package:food_delivery/Screens/Widgets/home_top_info.dart';
import 'package:food_delivery/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
        ],
      ),

      backgroundColor: kPrimaryLightColor,
      bottomNavigationBar: CurvedNavigationBar(
        //index: selectedIndex,
        items: [
          Icon(
            Icons.home,
            size: 30,
            color: kPromaryColour,
          ),
          Icon(
            Icons.rss_feed,
            size: 30,
            color: kPromaryColour,
          ),
          Icon(
            Icons.shopping_cart,
            size: 30,
            color: kPromaryColour,
          ),
          Icon(
            Icons.message,
            size: 30,
            color: kPromaryColour,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: kPromaryColour,
          )
        ],
        backgroundColor: kPrimaryLightColor,
        onTap: (index) {
          // setState(() {
          //   selectedIndex = index;
          // }
          //);
        },
        // animationCurve: Curves.easeInBack,
      ),
      // body: screen[selectedIndex]
    );
  }
}

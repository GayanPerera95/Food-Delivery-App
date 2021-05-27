import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:food_delivery/Screens/DashBoard/account.dart';
import 'package:food_delivery/Screens/DashBoard/cart.dart';
import 'package:food_delivery/Screens/DashBoard/chat.dart';
import 'package:food_delivery/Screens/DashBoard/feed.dart';
import 'package:food_delivery/Screens/Data/food_data.dart';
import 'package:food_delivery/Screens/Widgets/bought_foods.dart';
import 'package:food_delivery/Screens/Widgets/food_category.dart';
import 'package:food_delivery/Screens/Widgets/home_top_info.dart';
import 'package:food_delivery/Screens/Widgets/search_feild.dart';
import 'package:food_delivery/constants.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Food> _foods = foods;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
        children: <Widget>[
          HomeTopInfo(),
          FoodCategory(),
          SearchField(),
          SizedBox(
            height: 20.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Bought Foods",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: kPromaryColour),
                ),
              )
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foods.map(_buildFoodItems).toList(),
          ),
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

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
        id: food.id,
        name : food.name,
        imagePath: food.imagePath,
        category: food.category,
        price: food.price,
        discount: food.discount,
        ratings: food.ratings
      ),
       
    );
  }
}

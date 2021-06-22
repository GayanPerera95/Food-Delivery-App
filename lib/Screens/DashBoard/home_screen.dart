import 'package:flutter/material.dart';
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
      backgroundColor: kPrimaryLightColor,
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
     
    
    );
  }

  Widget _buildFoodItems(Food food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFoods(
          id: food.id,
          name: food.name,
          imagePath: food.imagePath,
          category: food.category,
          price: food.price,
          discount: food.discount,
          ratings: food.ratings),
    );
  }
}

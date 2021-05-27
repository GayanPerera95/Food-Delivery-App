import 'package:flutter/foundation.dart';

import '../Data/category_model.dart';


class Category {
  final String categoryName;
  final String imagePath;
  final int numberOfItems;

  Category({this.categoryName, this.imagePath, this.numberOfItems});

}

final categories = [
  Category(
    numberOfItems: 43,
    imagePath: "assets/images/bugger.png",
    categoryName: "Bugger"
    ),
  Category(
    numberOfItems: 18,
    imagePath: "assets/images/pizza.jpg",
    categoryName: "Pizza"
    ),

  Category(
    numberOfItems: 43,
    imagePath: "assets/images/bugger.png",
    categoryName: "Bugger"
    ),
  Category(
    numberOfItems: 18,
    imagePath: "assets/images/pizza.jpg",
    categoryName: "Pizza"
    ),

];

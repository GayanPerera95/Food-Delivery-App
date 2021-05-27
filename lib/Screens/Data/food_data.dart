class Food {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double price;
  final double discount;
  final double ratings;

  Food(
      {this.id,
      this.name,
      this.imagePath,
      this.category,
      this.price,
      this.discount,
      this.ratings});
}

final foods = [
  Food(
      id: "1",
      name: "Rice",
      imagePath: "assets/images/rice.jpg",
      category: "1",
      price: 250.0,
      discount: 10.5,
      ratings: 99.0),
  Food(
      id: "2",
      name: "Chicken",
      imagePath: "assets/images/chicken.jpg",
      category: "1",
      price: 100.0,
      discount: 8.4,
      ratings: 98.0),
  Food(
      id: "3",
      name: "Salad",
      imagePath: "assets/images/salad.jpg",
      category: "2",
      price: 125.0,
      discount: 12.25,
      ratings: 97.0),
];

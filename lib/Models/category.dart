class Category {
  final String name, imageUrl;

  Category({required this.name, required this.imageUrl});
}

List<Category> demoCategory = [
  Category(name: "Women", imageUrl: "assets/images/categories/women.png"),
  Category(name: "Men", imageUrl: "assets/images/categories/men.png"),
  Category(name: "Teen", imageUrl: "assets/images/categories/teen.png"),
  Category(name: "Kids", imageUrl: "assets/images/categories/kids.png"),
  Category(name: "Baby", imageUrl: "assets/images/categories/baby.png"),
];

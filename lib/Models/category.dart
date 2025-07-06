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

List<Category> subCategory = [
  Category(
    name: "Bags",
    imageUrl: "assets/images/categories/sub_category/bags.png",
  ),
  Category(
    name: "Wallets",
    imageUrl: "assets/images/categories/sub_category/wallets.png",
  ),
  Category(
    name: "Footwear",
    imageUrl: "assets/images/categories/sub_category/Footwear.png",
  ),
  Category(
    name: "Cloths",
    imageUrl: "assets/images/categories/sub_category/Cloths.png",
  ),
  Category(
    name: "Watchs",
    imageUrl: "assets/images/categories/sub_category/Watchs.png",
  ),
  Category(
    name: "Accessories",
    imageUrl: "assets/images/categories/sub_category/Accessories.png",
  ),
];

List<String> filters = ["Filter", "Ratings", "Size", "Color", "Price", "Brand"];

import 'package:flutter/material.dart';

class Product {
  final int id;
  final String name;
  final String image;
  final String description;
  final String category;
  final double rating;
  final double price;
  final int review;
  final List<Color> colors;
  final List<String> sizes;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.description,
    required this.category,
    required this.rating,
    required this.price,
    required this.review,
    required this.colors,
    required this.sizes,
  });
}

List<Product> demoProduct = [
  Product(
    id: 1,
    name: "فستان صيفي",
    image: "assets/images/products/image1.png",
    description:
        "فستان صيفي أنيق مناسب للسيدات. فستان صيفي أنيق مناسب للسيدات. فستان صيفي أنيق مناسب للسيدات. فستان صيفي أنيق مناسب للسيدات. فستان صيفي أنيق مناسب للسيدات.",
    category: "Women",
    rating: 4.5,
    price: 299.99,
    review: 123,
    colors: [Colors.pink, Colors.green, Colors.red],
    sizes: ["S", "M", "L"],
  ),
  Product(
    id: 2,
    name: "تيشيرت رجالي",
    image: "assets/images/products/image2.png",
    description:
        "تيشيرت قطني خفيف مريح في الصيف. تيشيرت قطني خفيف مريح في الصيف. تيشيرت قطني خفيف مريح في الصيف. تيشيرت قطني خفيف مريح في الصيف. تيشيرت قطني خفيف مريح في الصيف. تيشيرت قطني خفيف مريح في الصيف. تيشيرت قطني خفيف مريح في الصيف.",
    category: "Men",
    rating: 4.2,
    price: 199.00,
    review: 88,
    colors: [
      Colors.black,
      Colors.blue,
      const Color.fromARGB(255, 39, 108, 164),
    ],
    sizes: ["M", "L", "XL"],
  ),
  Product(
    id: 3,
    name: "جينز شبابي",
    image: "assets/images/products/image3.png",
    description: "بنطال جينز بتصميم عصري للشباب.",
    category: "Teen",
    rating: 4.8,
    price: 349.00,
    review: 152,
    colors: [Colors.blueGrey],
    sizes: ["32", "34", "36"],
  ),
  Product(
    id: 4,
    name: "حذاء أطفال",
    image: "assets/images/products/image4.png",
    description: "حذاء مريح وآمن للأطفال.",
    category: "Kids",
    rating: 4.7,
    price: 149.99,
    review: 67,
    colors: [Colors.red, Colors.green],
    sizes: ["28", "30", "32"],
  ),
  Product(
    id: 5,
    name: "فستان بناتي",
    image: "assets/images/products/image5.png",
    description: "فستان جميل للبنات الصغيرات.",
    category: "Girls",
    rating: 4.6,
    price: 179.99,
    review: 54,
    colors: [Colors.purple, Colors.pink],
    sizes: ["S", "M"],
  ),
  Product(
    id: 6,
    name: "طقم حديثي الولادة",
    image: "assets/images/products/image6.png",
    description: "طقم مريح وآمن للمواليد الجدد.",
    category: "Baby",
    rating: 5.0,
    price: 199.99,
    review: 32,
    colors: [Colors.white, Colors.lightBlue],
    sizes: ["Newborn", "3M", "6M"],
  ),
  Product(
    id: 7,
    name: "بلوزة نسائية",
    image: "assets/images/products/image7.png",
    description: "بلوزة خفيفة مثالية للعمل أو المناسبات.",
    category: "Women",
    rating: 4.3,
    price: 249.99,
    review: 71,
    colors: [Colors.white, Colors.grey],
    sizes: ["S", "M", "L"],
  ),
  Product(
    id: 8,
    name: "قميص رجالي كلاسيك",
    image: "assets/images/products/image8.png",
    description: "قميص رجالي أنيق لمظهر رسمي.",
    category: "Men",
    rating: 4.4,
    price: 289.99,
    review: 105,
    colors: [Colors.white, Colors.blueGrey],
    sizes: ["M", "L", "XL"],
  ),
  Product(
    id: 9,
    name: "هودي شبابي",
    image: "assets/images/products/image9.png",
    description: "هودي مميز وعصري لفصل الشتاء.",
    category: "Teen",
    rating: 4.9,
    price: 399.00,
    review: 98,
    colors: [Colors.black, Colors.orange],
    sizes: ["M", "L"],
  ),
  Product(
    id: 10,
    name: "فستان أطفال كاجوال",
    image: "assets/images/products/image10.png",
    description: "فستان كاجوال مناسب للحفلات والمدرسة.",
    category: "Kids",
    rating: 4.5,
    price: 159.99,
    review: 61,
    colors: [Colors.yellow, Colors.lightGreen],
    sizes: ["S", "M"],
  ),
  Product(
    id: 11,
    name: "بنطال نسائي واسع",
    image: "assets/images/products/image11.png",
    description: "بنطال واسع أنيق ومريح للنساء.",
    category: "Women",
    rating: 4.3,
    price: 229.99,
    review: 45,
    colors: [Colors.brown, Colors.grey],
    sizes: ["S", "M", "L"],
  ),
  Product(
    id: 12,
    name: "جاكيت رجالي شتوي",
    image: "assets/images/products/image12.png",
    description: "جاكيت مبطن مثالي لفصل الشتاء.",
    category: "Men",
    rating: 4.8,
    price: 499.99,
    review: 112,
    colors: [Colors.black, Colors.grey],
    sizes: ["L", "XL", "XXL"],
  ),
  Product(
    id: 13,
    name: "تيشيرت شبابي برسمة",
    image: "assets/images/products/image13.png",
    description: "تيشيرت برسمة عصرية للشباب.",
    category: "Teen",
    rating: 4.4,
    price: 169.99,
    review: 78,
    colors: [Colors.white, Colors.black],
    sizes: ["M", "L"],
  ),
  Product(
    id: 14,
    name: "جاكيت أطفال مبطن",
    image: "assets/images/products/image14.png",
    description: "جاكيت دافئ للأطفال في الشتاء.",
    category: "Kids",
    rating: 4.6,
    price: 249.99,
    review: 39,
    colors: [Colors.blue, Colors.green],
    sizes: ["30", "32", "34"],
  ),
  Product(
    id: 15,
    name: "تنورة بناتي قصيرة",
    image: "assets/images/products/image15.png",
    description: "تنورة بناتي ناعمة ومناسبة للمدرسة.",
    category: "Girls",
    rating: 4.5,
    price: 139.99,
    review: 29,
    colors: [Colors.pink, Colors.redAccent],
    sizes: ["S", "M"],
  ),
  Product(
    id: 16,
    name: "سالوبيت بيبي",
    image: "assets/images/products/image16.png",
    description: "سالوبيت قطن ناعم ومثالي للبيبي.",
    category: "Baby",
    rating: 4.9,
    price: 189.99,
    review: 22,
    colors: [Colors.lightBlue, Colors.white],
    sizes: ["3M", "6M", "9M"],
  ),
  Product(
    id: 17,
    name: "بلوزة كاجوال نسائية",
    image: "assets/images/products/image17.png",
    description: "بلوزة مثالية للخروج اليومي.",
    category: "Women",
    rating: 4.2,
    price: 179.99,
    review: 64,
    colors: [Colors.purple, Colors.white],
    sizes: ["S", "M", "L"],
  ),
  Product(
    id: 18,
    name: "سروال رياضي رجالي",
    image: "assets/images/products/image18.png",
    description: "سروال رياضي خفيف ومتين.",
    category: "Men",
    rating: 4.1,
    price: 219.99,
    review: 57,
    colors: [Colors.grey, Colors.black],
    sizes: ["M", "L", "XL"],
  ),
  Product(
    id: 19,
    name: "شورت جينز شبابي",
    image: "assets/images/products/image19.png",
    description: "شورت صيفي للشباب عملي ومريح.",
    category: "Teen",
    rating: 4.6,
    price: 149.99,
    review: 38,
    colors: [Colors.blue],
    sizes: ["32", "34"],
  ),
  Product(
    id: 20,
    name: "تيشيرت أطفال برسومات",
    image: "assets/images/products/image20.png",
    description: "تيشيرت لطيف للأطفال برسومات مرحة.",
    category: "Kids",
    rating: 4.7,
    price: 99.99,
    review: 50,
    colors: [Colors.yellow, Colors.orange],
    sizes: ["28", "30", "32"],
  ),
  Product(
    id: 21,
    name: "جاكيت خفيف للبنات",
    image: "assets/images/products/image21.png",
    description: "جاكيت أنيق ومناسب للخريف.",
    category: "Girls",
    rating: 4.4,
    price: 199.99,
    review: 34,
    colors: [Colors.purple, Colors.grey],
    sizes: ["S", "M"],
  ),
  Product(
    id: 22,
    name: "بيجامة بيبي",
    image: "assets/images/products/image22.png",
    description: "بيجامة ناعمة ومريحة للبيبي.",
    category: "Baby",
    rating: 4.8,
    price: 149.99,
    review: 18,
    colors: [Colors.pink, Colors.white],
    sizes: ["3M", "6M", "9M"],
  ),
  Product(
    id: 23,
    name: "قميص نسائي كلاسيك",
    image: "assets/images/products/image23.png",
    description: "قميص أنيق لمظهر رسمي.",
    category: "Women",
    rating: 4.3,
    price: 269.99,
    review: 41,
    colors: [Colors.white, Colors.lightBlue],
    sizes: ["S", "M", "L"],
  ),
  Product(
    id: 24,
    name: "بدلة رياضية رجالية",
    image: "assets/images/products/image24.png",
    description: "بدلة رياضية كاملة لراحة أثناء التمارين.",
    category: "Men",
    rating: 4.5,
    price: 399.99,
    review: 73,
    colors: [Colors.black, Colors.red],
    sizes: ["M", "L", "XL"],
  ),
  Product(
    id: 25,
    name: "كنزة شبابية خريفية",
    image: "assets/images/products/image25.png",
    description: "كنزة ناعمة دافئة بتصميم شبابي.",
    category: "Teen",
    rating: 4.6,
    price: 189.99,
    review: 26,
    colors: [Colors.green, Colors.brown],
    sizes: ["M", "L"],
  ),
  Product(
    id: 26,
    name: "بيجامة أطفال شتوية",
    image: "assets/images/products/image26.png",
    description: "بيجامة دافئة بألوان مبهجة.",
    category: "Kids",
    rating: 4.9,
    price: 139.99,
    review: 33,
    colors: [Colors.blue, Colors.yellow],
    sizes: ["30", "32", "34"],
  ),
  Product(
    id: 27,
    name: "فستان حفلات بناتي",
    image: "assets/images/products/image27.png",
    description: "فستان مميز للمناسبات والحفلات.",
    category: "Girls",
    rating: 4.7,
    price: 229.99,
    review: 40,
    colors: [Colors.red, Colors.pink],
    sizes: ["S", "M"],
  ),
  Product(
    id: 28,
    name: "قبعة شتوية للبيبي",
    image: "assets/images/products/image28.png",
    description: "قبعة ناعمة تحافظ على دفء رأس الطفل.",
    category: "Baby",
    rating: 5.0,
    price: 89.99,
    review: 15,
    colors: [Colors.grey, Colors.yellowAccent],
    sizes: ["0-3M"],
  ),
  // Product(
  //   id: 29,
  //   name: "شال نسائي شتوي",
  //   image: "assets/images/products/women_scarf.png",
  //   description: "شال دافئ أنيق بلمسة عصرية.",
  //   category: "Women",
  //   rating: 4.6,
  //   price: 129.99,
  //   review: 51,
  //   colors: [Colors.brown, Colors.white],
  //   sizes: ["One Size"],
  // ),
  // Product(
  //   id: 30,
  //   name: "كاب رياضي رجالي",
  //   image: "assets/images/products/men_cap.png",
  //   description: "كاب أنيق للحماية من الشمس.",
  //   category: "Men",
  //   rating: 4.3,
  //   price: 79.99,
  //   review: 27,
  //   colors: [Colors.black, Colors.blue],
  //   sizes: ["One Size"],
  // ),
];

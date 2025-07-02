import 'package:ecommerce_app_ui/Components/banner_section.dart';
import 'package:ecommerce_app_ui/Components/categories_section.dart';
import 'package:ecommerce_app_ui/Components/products_section.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          BannerSection(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 20),
            child: Column(children: [CategoriesSection(), ProductsSection()]),
          ),
        ],
      ),
    );
  }
}

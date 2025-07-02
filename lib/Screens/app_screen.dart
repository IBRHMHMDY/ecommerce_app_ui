import 'package:ecommerce_app_ui/Screens/cart_screen.dart';
import 'package:ecommerce_app_ui/Screens/explore_screen.dart';
import 'package:ecommerce_app_ui/Screens/home_screen.dart';
import 'package:ecommerce_app_ui/Screens/profile_screen.dart';
import 'package:ecommerce_app_ui/Widgets/bottom_nav_bar.dart';
import 'package:ecommerce_app_ui/Widgets/cart_button.dart';
import 'package:ecommerce_app_ui/Widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';

class AppScreen extends StatefulWidget {
  const AppScreen({super.key});

  @override
  State<AppScreen> createState() => _AppScreenState();
}

class _AppScreenState extends State<AppScreen> {
  int selectedIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const ExploreScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopNavBar(
        title: Image.asset('assets/logo.png', height: 32, width: 32),
        centerTitle: false,
        actions: [CartButton()],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavBar(
        onItemTapped: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        selectedIndex: selectedIndex,
      ),
      body: screens[selectedIndex],
    );
  }
}

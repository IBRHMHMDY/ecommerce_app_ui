import 'package:ecommerce_app_ui/Models/category.dart';
import 'package:ecommerce_app_ui/Models/product.dart';
import 'package:ecommerce_app_ui/Screens/Category_items.dart';
import 'package:ecommerce_app_ui/Utils/colors.dart';
import 'package:ecommerce_app_ui/Widgets/header_section.dart';
import 'package:flutter/material.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        HeaderSection(title: "Shop by Category"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoCategory.length,
              (index) => GestureDetector(
                onTap: () {
                  final filterItems = demoProduct
                      .where(
                        (item) => item.category.toLowerCase() == demoCategory[index].name.toLowerCase(),
                      )
                      .toList();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => CategoryItems(
                        category: demoCategory[index].name,
                        categoryItems: filterItems,
                      ),
                    ),
                  );
                },
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 14),
                      child: CircleAvatar(
                        backgroundColor: backgroundColor1,
                        radius: 30,
                        child: ClipOval(
                          child: Image.asset(
                            demoCategory[index].imageUrl,
                            fit: BoxFit.cover,
                            width: 60,
                            height: 60,
                            errorBuilder: (context, error, stackTrace) {
                              return Icon(Icons.error, color: Colors.red);
                            },
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(demoCategory[index].name),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

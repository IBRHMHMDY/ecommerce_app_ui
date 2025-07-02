import 'package:ecommerce_app_ui/Models/category.dart';
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
              (index) => InkWell(
                onTap: () {},
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

import 'package:ecommerce_app_ui/Models/product.dart';
import 'package:ecommerce_app_ui/Screens/details_screen.dart';
import 'package:ecommerce_app_ui/Utils/colors.dart';
import 'package:ecommerce_app_ui/Widgets/header_section.dart';
import 'package:flutter/material.dart';

class ProductsSection extends StatefulWidget {
  const ProductsSection({super.key});

  @override
  State<ProductsSection> createState() => _ProductsSectionState();
}

class _ProductsSectionState extends State<ProductsSection> {
  bool selectedFav = false;
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        HeaderSection(title: "Products for You"),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              demoProduct.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          DetailsScreen(product: demoProduct[index]),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: backgroundColor2,
                            ),
                            height: size.height * 0.20,
                            width: size.width * 0.4,
                            child: Image.asset(
                              demoProduct[index].image,
                              errorBuilder: (context, error, stackTrace) {
                                return Icon(Icons.error, color: Colors.red);
                              },
                            ),
                          ),
                          Positioned(
                            top: 10,
                            right: 5,
                            child: SizedBox(
                              height: 35,
                              width: 35,
                              child: GestureDetector(
                                onTap: () {},
                                child: Icon(
                                  Icons.favorite_border_outlined,
                                  color: selectedFav ? Colors.red : Colors.grey,
                                  size: 24,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "H&M",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 16, color: Colors.yellow),
                          Text(
                            demoProduct[index].rating.toString(),
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(demoProduct[index].name),
                      SizedBox(height: 5),
                      Row(
                        children: [
                          Text(
                            "\$${(demoProduct[index].price / 2).toStringAsFixed(2)}",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "\$${demoProduct[index].price}",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

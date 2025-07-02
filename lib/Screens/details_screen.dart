import 'package:flutter/material.dart';
import 'package:ecommerce_app_ui/Widgets/sliders.dart';
import 'package:ecommerce_app_ui/Widgets/style_button.dart';
import '../Utils/colors.dart';
import '../Models/product.dart';
import '../Widgets/cart_button.dart';

class DetailsScreen extends StatefulWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedColor = 0;
  int selectedSize = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor2,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          widget.product.name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [CartButton()],
      ),
      body: Column(
        children: [
          Sliders(product: widget.product),
          const SizedBox(height: 5),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                // Brand - Rating - Review - Fav
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "H&M",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Row(
                          children: [
                            Icon(
                              Icons.star_sharp,
                              size: 26,
                              color: Colors.yellow,
                            ),
                            Text(
                              widget.product.rating.toString(),
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text("(${widget.product.review})"),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.favorite_border_outlined,
                      size: 26,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      widget.product.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                //price
                Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$${(widget.product.price / 2).toStringAsFixed(2)}",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.red,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        SizedBox(width: 15),
                        Text(
                          "\$${(widget.product.price).toStringAsFixed(2)}",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  widget.product.description,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey,
                  ),
                  softWrap: true,
                  overflow: TextOverflow.visible,
                  maxLines: null,
                ),
                SizedBox(height: 20),
                // Colors and Sizes
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Color:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: widget.product.colors.asMap().entries.map(
                              (entry) {
                                final int index = entry.key;
                                final color = entry.value;
                                return Padding(
                                  padding: const EdgeInsets.only(
                                    top: 10,
                                    right: 10,
                                  ),
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(50),
                                    onTap: () {
                                      setState(() {
                                        selectedColor = index;
                                      });
                                    },
                                    child: CircleAvatar(
                                      radius: 18,
                                      backgroundColor: color,
                                      child: selectedColor == index
                                          ? const Icon(
                                              Icons.check,
                                              size: 22,
                                              color: Colors.white,
                                              weight: 900,
                                            )
                                          : null,
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Size:",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey,
                          ),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: widget.product.sizes.asMap().entries.map((
                              entry,
                            ) {
                              final int index = entry.key;
                              return Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                  right: 10,
                                ),
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(
                                    50,
                                  ), // مهم لعرض تأثير الضغط داخل الدائرة
                                  onTap: () {
                                    setState(() {
                                      selectedSize = index;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 18,
                                    backgroundColor: selectedSize == index
                                        ? Colors.black
                                        : Colors.grey,
                                    child: selectedSize == index
                                        ? Text(
                                            widget.product.sizes[index],
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          )
                                        : Text(
                                            widget.product.sizes[index],
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                  ),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                // Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StyleButton(
                      title: "ADD TO CART",
                      bgColor: Colors.white,
                      textColor: Colors.black,
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        size: 22,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(width: 20),
                    StyleButton(
                      title: "BUY NOW",
                      bgColor: Colors.black,
                      textColor: Colors.white,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

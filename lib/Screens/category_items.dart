import 'package:ecommerce_app_ui/Models/category.dart';
import 'package:ecommerce_app_ui/Models/product.dart';
import 'package:ecommerce_app_ui/Screens/details_screen.dart';
import 'package:ecommerce_app_ui/Utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryItems extends StatefulWidget {
  final String category;
  final List<Product> categoryItems;

  const CategoryItems({
    super.key,
    required this.category,
    required this.categoryItems,
  });

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  List<Product> filterResults = [];
  final TextEditingController _controller = TextEditingController();
  @override
  void initState() {
    filterResults = widget.categoryItems;
    super.initState();
  }

  void _filterList(String keyword) {
    setState(() {
      filterResults = widget.categoryItems.where((product) {
        final title = product.name.toString().toLowerCase();
        final input = keyword.toLowerCase();
        return title.contains(input);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            // Search
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(
                children: [
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Icon(Icons.arrow_back),
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: SizedBox(
                      height: 45,
                      child: TextField(
                        controller: _controller,
                        onChanged: _filterList,
                        decoration: InputDecoration(
                          hintText: "${widget.category}'s Fashions",
                          hintStyle: TextStyle(height: 2.5),
                          prefixIcon: Icon(CupertinoIcons.search),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _controller.clear();
                                _filterList("");
                              });
                            },
                            child: Icon(CupertinoIcons.clear_circled),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 15),
                          filled: true,
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              style: BorderStyle.solid,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 5),
            // Filters
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: List.generate(
                    filters.length,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2),
                      child: Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: Colors.black12),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              filters[index],
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black38,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 5),
                            Icon(
                              index == 0
                                  ? Icons.filter_list
                                  : Icons.keyboard_arrow_down,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            // subCategories
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  subCategory.length,
                  (index) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 5),
                            child: CircleAvatar(
                              backgroundColor: backgroundColor1,
                              radius: 30,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(30),
                                child: Image.asset(
                                  subCategory[index].imageUrl,
                                  width: 60,
                                  height: 60,
                                  fit: BoxFit.cover,
                                  errorBuilder: (context, error, stackTrace) =>
                                      Icon(Icons.error, color: Colors.red),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            subCategory[index].name,
                            style: TextStyle(fontSize: 13),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Category Items
            Expanded(
              child: widget.categoryItems.isEmpty
                  ? SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          "No Product in ${widget.category} Category",
                        ),
                      ),
                    )
                  : GridView.builder(
                      itemCount: filterResults.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                      ),
                      itemBuilder: (context, index) {
                        final productCategory = filterResults[index];
                        return Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                    product: widget.categoryItems[index],
                                  ),
                                ),
                              );
                            },
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: backgroundColor1,
                                      ),
                                      height: size.height * 0.20,
                                      width: size.width * 0.40,
                                      child: Image.asset(
                                        productCategory.image,
                                        errorBuilder:
                                            (context, error, stackTrace) {
                                              return Icon(
                                                Icons.error,
                                                color: Colors.red,
                                              );
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
                                            color: Colors.grey,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 5),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 5,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
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
                                          Icon(
                                            Icons.star,
                                            size: 16,
                                            color: Colors.yellow,
                                          ),
                                          Text(
                                            productCategory.rating.toString(),
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text(productCategory.name),
                                      SizedBox(height: 5),
                                      Row(
                                        children: [
                                          Text(
                                            "\$${(productCategory.price / 2).toStringAsFixed(2)}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          SizedBox(width: 10),
                                          Text(
                                            "\$${productCategory.price}",
                                            style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              decoration:
                                                  TextDecoration.lineThrough,
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

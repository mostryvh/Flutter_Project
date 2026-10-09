import 'package:flutter/material.dart';

import '../core/Widget/category_item_card.dart';

class CategoryScrean extends StatefulWidget {
  const CategoryScrean({super.key});

  @override
  State<CategoryScrean> createState() => _CategoryScreanState();
}

class _CategoryScreanState extends State<CategoryScrean> {
  final List<String> categories = [
    "All",
    "Novels",
    "Self Love",
    "Science",
    "Romantic",
    "Horror",
    "Fantasy",
    "Science Fiction",
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: Color(0xFF121212), size: 24),
        ),
        title: Text(
          "Category",
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            height: 1.40,
            color: Color(0xFF121212),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications, color: Color(0xFF121212), size: 24),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            SizedBox(
              height: 40,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  bool isSelected = selectedIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            categories[index],
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: isSelected
                                  ? FontWeight.bold
                                  : FontWeight.normal,
                              color: isSelected
                                  ? Color(0xFF121212)
                                  : Color(0xFFA6A6A6),
                            ),
                          ),
                          if (isSelected) ...[
                            SizedBox(height: 3),
                            Container(
                              height: 2,
                              width: 15,
                              decoration: BoxDecoration(
                                color: Color(0xFF54408C),
                                borderRadius: BorderRadius.circular(2),
                              ),
                            ),
                          ],
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 24),

            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CategoryItemCard(
                      imagePath: 'assets/images/category1.png',
                      nameBook: 'In in amet ultrices sit.',
                      pricBook: '\$19.99',
                      bookId: '1',
                    ),
                    SizedBox(height: 24),
                    CategoryItemCard(
                      imagePath: 'assets/images/category2.png',
                      nameBook: 'Bibendum facilisis.',
                      pricBook: '\$27.12',
                      bookId: '2',
                    ),
                    SizedBox(height: 24),
                    CategoryItemCard(
                      imagePath: 'assets/images/category3.png',
                      nameBook: 'Nulla et diam cras.',
                      pricBook: '\$13.52',
                      bookId: '3',
                    ),
                    SizedBox(height: 24),
                    CategoryItemCard(
                      imagePath: 'assets/images/category4.png',
                      nameBook: 'Risus malesuada in..',
                      pricBook: '\$31.00',
                      bookId: '4',
                    ),
                    SizedBox(height: 24),
                    CategoryItemCard(
                      imagePath: 'assets/images/category1.png',
                      nameBook: 'In in amet ultrices sit.',
                      pricBook: '\$19.99',
                      bookId: '5',
                    ),
                    SizedBox(height: 24),
                    CategoryItemCard(
                      imagePath: 'assets/images/category2.png',
                      nameBook: 'Bibendum facilisis.',
                      pricBook: '\$27.12',
                      bookId: '6',
                    ),
                    SizedBox(height: 24),
                    CategoryItemCard(
                      imagePath: 'assets/images/category3.png',
                      nameBook: 'Nulla et diam cras.',
                      pricBook: '\$13.52',
                      bookId: '7',
                    ),
                    SizedBox(height: 24),
                    CategoryItemCard(
                      imagePath: 'assets/images/category4.png',
                      nameBook: 'Risus malesuada in..',
                      pricBook: '\$31.00',
                      bookId: '8',
                    ),
                    SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

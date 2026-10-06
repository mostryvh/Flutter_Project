import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Widget/widgets_home_paged/section_header.dart';
import 'package:flutter_application_1/core/Widget/widgets_home_paged/BookCard.dart';
import 'package:flutter_application_1/core/Widget/widgets_home_paged/Best_Vendors.dart';
import 'package:flutter_application_1/core/Widget/widgets_home_paged/authors_card.dart';
import 'package:flutter_application_1/core/Widget/widgets_home_paged/special_offer_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
          "Home",
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Color(0xFF121212),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications,
              color: Color(0xFF121212),
              size: 24,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(left: 24, top: 16, bottom: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SpecialOffer(
                title: "Special Offer",
                discount: "Discount 25%",
                imagePath: 'assets/images/Apollo.png',
              ),

              SizedBox(height: 16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.circle, size: 8, color: Color(0xFF54408C)),
                  SizedBox(width: 6),
                  Icon(Icons.circle, size: 4, color: Color(0xFFE8E8E8)),
                  SizedBox(width: 6),
                  Icon(Icons.circle, size: 4, color: Color(0xFFE8E8E8)),
                ],
              ),
              SizedBox(height: 16),
              SectionHeader(title: "Top of Week", onSeeAll: () {}),
              SizedBox(height: 14),

              SizedBox(
                height: 240,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BookCard(
                        imagePath: 'assets/images/topof wekk 1.png',
                        title: "The Kite Runner",
                        price: "\$14.99",
                      ),
                      SizedBox(width: 8),
                      BookCard(
                        imagePath: 'assets/images/topof week2.png',
                        title: "The Kite Runner",
                        price: "\$20.99",
                      ),
                      SizedBox(width: 8),
                      BookCard(
                        imagePath: 'assets/images/topof week3.png',
                        title: "The Kite Runner",
                        price: "\$14.99",
                      ),
                      SizedBox(width: 8),
                      BookCard(
                        imagePath: 'assets/images/topof week2.png',
                        title: "The Kite Runner",
                        price: "\$20.99",
                      ),
                      SizedBox(width: 8),
                    ],
                  ),
                ),
              ),

              SectionHeader(title: "Best Vendors", onSeeAll: () {}),

              SizedBox(height: 16),

              SizedBox(
                height: 80,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      BestVendors(imagePath: 'assets/images/bestvondar1.png'),
                      SizedBox(width: 8),
                      BestVendors(imagePath: 'assets/images/bestvondar2.png'),
                      SizedBox(width: 8),
                      BestVendors(imagePath: 'assets/images/bestvondar3.png'),
                      SizedBox(width: 8),
                      BestVendors(imagePath: 'assets/images/bestvondar4.png'),
                      SizedBox(width: 8),
                      BestVendors(imagePath: 'assets/images/bestvondar2.png'),
                      SizedBox(width: 8),
                      BestVendors(imagePath: 'assets/images/bestvondar3.png'),
                      SizedBox(width: 8),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 20),

              SectionHeader(title: "Authors", onSeeAll: () {}),
              SizedBox(height: 30),
              SizedBox(
                height: 170,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Authors(
                        imagePath: 'assets/images/jone.png',
                        authorName: "John Freeman",
                        authorClassification: "Writer",
                      ),
                      SizedBox(width: 32),
                      Authors(
                        imagePath: 'assets/images/tees.png',
                        authorName: "Tess Gunty",
                        authorClassification: "Novelist",
                      ),
                      SizedBox(width: 12),
                      Authors(
                        imagePath: 'assets/images/rechird.png',
                        authorName: "Richard Perston",
                        authorClassification: "Writer",
                      ),
                      SizedBox(width: 12),
                      Authors(
                        imagePath: 'assets/images/jone.png',
                        authorName: "John Freeman",
                        authorClassification: "Writer",
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );

    // Bottom Navigation Bar

    //
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/Widget/category_item_card.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:hive_flutter/hive_flutter.dart';

class YourFavorites extends StatelessWidget {
  const YourFavorites({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF121212)),
          onPressed: () {
            NavigationHelper.goBack(context);
          },
        ),
        title: Text(
          "Your Favorites",
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight(700),
            fontSize: 20,
            height: 1.40,
            color: Color(0xFF121212),
          ),
        ),
        centerTitle: true,
      ),

      body: ValueListenableBuilder(
        valueListenable: Hive.box('favorites').listenable(),
        builder: (BuildContext context, Box box, Widget? child) {
          var favoriteList = box.values.toList();

          if (favoriteList.isEmpty) {
            return Center(child: Text("not have any favorite book "));
          } else {
            return ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              itemCount: favoriteList.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  color: Color(0xFFEEEEEE),
                  thickness: 1,
                  height: 32,
                );
              },
              itemBuilder: (context, index) {
                var currentItem = favoriteList[index];
                return CategoryItemCard(
                  imagePath: currentItem['image'],
                  nameBook: currentItem['name'],
                  pricBook: currentItem['price'],
                  bookId: currentItem['id'],
                );
              },
            );
          }
        },
      ),
    );
  }
}

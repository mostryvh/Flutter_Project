import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:intl/intl.dart';
import 'package:flutter_application_1/core/Widget/order_history_card.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> fakeOrder = [
      {
        'image': 'assets/images/category1.png',
        'name': 'The Da Vinci Code',
        'status': 'Delivered',
        'items': '1',
      },
      {
        'image': 'assets/images/category2.png',
        'name': 'Carrie Fisher',
        'status': 'Delivered',
        'items': '5',
      },
      {
        'image': 'assets/images/category3.png',
        'name': 'The Waiting',
        'status': 'Cancelled',
        'items': '2',
      },
      {
        'image': 'assets/images/category1.png',
        'name': 'The Da Vinci Code',
        'status': 'Delivered',
        'items': '4',
      },
      {
        'image': 'assets/images/category2.png',
        'name': 'Carrie Fisher',
        'status': 'Delivered',
        'items': '34',
      },
      {
        'image': 'assets/images/category3.png',
        'name': 'The Waiting',
        'status': 'Cancelled',
        'items': '12',
      },
      {
        'image': 'assets/images/category1.png',
        'name': 'The Da Vinci Code',
        'status': 'Delivered',
        'items': '1',
      },
      {
        'image': 'assets/images/category2.png',
        'name': 'Carrie Fisher',
        'status': 'Delivered',
        'items': '5',
      },
      {
        'image': 'assets/images/category3.png',
        'name': 'The Waiting',
        'status': 'Cancelled',
        'items': '2',
      },
      {
        'image': 'assets/images/category1.png',
        'name': 'The Da Vinci Code',
        'status': 'Delivered',
        'items': '4',
      },
      {
        'image': 'assets/images/category2.png',
        'name': 'Carrie Fisher',
        'status': 'Delivered',
        'items': '34',
      },
      {
        'image': 'assets/images/category3.png',
        'name': 'The Waiting',
        'status': 'Cancelled',
        'items': '12',
      },
    ];
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
          "Order History",
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

      body: ScrollConfiguration(
        behavior: ScrollBehavior().copyWith(overscroll: false),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 16),
                Text(
                  DateFormat('MMMM yyyy').format(DateTime.now()),
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    height: 1.50,
                    letterSpacing: -0.03,
                    color: Color(0xFF121212),
                  ),
                ),
                SizedBox(height: 16),

                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color:   Color(0xFFE5E5E5),
                      width: 1,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(7),
                    child: ListView.separated(
                      shrinkWrap: true,
                      physics:   NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.zero,
                      itemCount: fakeOrder.length,
                      itemBuilder: (context, index) {
                        final currentOrder = fakeOrder[index];

                        return OrderHistoryCard(
                          imagePath: currentOrder['image'],
                          nameBook: currentOrder['name'],
                          statusBook: currentOrder['status'],
                          itemsCount: currentOrder['items'],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return   Divider(
                          color: Color(0xFFEEEEEE),
                          thickness: 1,
                          height: 1,
                        );
                      },
                    ),
                  ),
                ),

                SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

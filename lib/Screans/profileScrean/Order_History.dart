import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

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
    );
  }
}

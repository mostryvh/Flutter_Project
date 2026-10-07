import 'package:flutter/material.dart';

class SpecialOffer extends StatelessWidget {
  final String title;
  final String discount;
  final String imagePath;

  const SpecialOffer({super.key, required this.title, required this.discount,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 146,
      padding: EdgeInsets.only(left: 24, top: 16, bottom: 16, right: 16),
      decoration: BoxDecoration(
        color: Color(0xFFFAF9FD),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 20,
                  fontWeight: FontWeight(700),
                  color: Color(0xFF121212),
                ),
              ),

              SizedBox(height: 4),
              Text(
                discount,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight(400),
                  fontSize: 14,
                  color: Color(0xFF121212),
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                width: 118,
                height: 36,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF54408C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    "Order Now",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight(700),
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ],
          ),

          Image.asset( imagePath, width: 99, height: 145),
        ],
      ),
    );
  }
}

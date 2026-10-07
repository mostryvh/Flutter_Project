import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final String price;
  const BookCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      
      child:
       Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 120,
              height: 165,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 8),
          Text(
            title,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF121212),
            ),
          ),
          SizedBox(height: 4),
          Text(
            price,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xFF54408C),
            ),
          ),
        ],
      ),
    );
  }
}

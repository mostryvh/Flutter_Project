import 'package:flutter/material.dart';

class CategoryItemCard extends StatelessWidget {
  final String imagePath;
  final String nameBook;
  final String pricBook;
  const CategoryItemCard({
    super.key,
    required this.imagePath,
    required this.nameBook,
    required this.pricBook,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(imagePath, width: 48, height: 48),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nameBook,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight(500),
                  fontSize: 16,
                  height: 1.50,
                  color: Color(0xFF121212),
                ),
              ),
              SizedBox(height: 8),
              Text(
                pricBook,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight(400),
                  fontSize: 14,
                  height: 1.40,
                  letterSpacing: 0.3,
                  color: Color(0xFF54408C),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

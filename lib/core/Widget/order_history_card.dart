
import 'package:flutter/material.dart';

class OrderHistoryCard extends StatelessWidget {
  final String imagePath;
  final String nameBook;
  final String statusBook;
  final String itemsCount;

 const OrderHistoryCard({
    super.key,
    required this.imagePath,
    required this.nameBook,
    required this.statusBook,
    required this.itemsCount,
  });

  @override
  Widget build(BuildContext context) {
    final bool isCancelled = statusBook.toLowerCase() == 'cancelled';

    return SizedBox(
      height: 82,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 48,
                height: 48,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 16),
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
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      height: 1.4,
                      color: Color(0xFF121212),
                    ),
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        statusBook,
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                          height: 1.4,
                          color: isCancelled
                              ? Color(0xFFFF4D4F)
                              : Color(0xFF18A057),
                        ),
                      ),
                      SizedBox(width: 8),
                      Text(
                        '•',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFDDDDDD),
                        ),
                      ),
                      SizedBox(width: 8),
                      Flexible(
                        child: Text(
                          '$itemsCount items',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            height: 1.4,
                            color: Color(0xFF7A7A7A),
                          ),
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
  }
}

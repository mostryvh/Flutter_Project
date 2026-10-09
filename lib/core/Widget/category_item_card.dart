import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CategoryItemCard extends StatefulWidget {
  final String imagePath;
  final String nameBook;
  final String pricBook;
  final String bookId;
  const CategoryItemCard({
    super.key,
    required this.imagePath,
    required this.nameBook,
    required this.pricBook,
    required this.bookId,
  });

  @override
  State<CategoryItemCard> createState() => _CategoryItemCardState();
}

class _CategoryItemCardState extends State<CategoryItemCard> {
  @override
  Widget build(BuildContext context) {
    var favoritBox = Hive.box("favorites");
    bool isFavorite = favoritBox.containsKey(widget.bookId);
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(widget.imagePath, width: 48, height: 48),
        ),
        SizedBox(width: 12),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.nameBook,
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
                widget.pricBook,
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
        Spacer(),
        IconButton(
          onPressed: () {
            setState(() {
              if (isFavorite) {
                favoritBox.delete(widget.bookId);
              } else {
                favoritBox.put( widget.bookId,{
                  'id':widget.bookId,
                  'name':widget.nameBook,
                  'price':widget.pricBook,
                  'image':widget.imagePath
                });
              }
            });
          },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border,

            color: isFavorite ? Color(0xFF54408C) : Colors.black,
            size: 24,
          ),
        ),
      ],
    );
  }
}

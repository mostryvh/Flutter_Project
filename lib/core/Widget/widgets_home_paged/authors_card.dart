import 'package:flutter/material.dart';

class Authors extends StatelessWidget {
  final String imagePath;
  final String authorName;
  final String authorClassification;
  const Authors({
    super.key,
    required this.imagePath,
    required this.authorName,
    required this.authorClassification,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundImage: AssetImage(imagePath),
            backgroundColor:   Color.fromARGB(255, 236, 236, 236),
          ),
          SizedBox(height: 12),
          Text(
            authorName,
            textAlign: TextAlign.center,
            maxLines: 1,
            // overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight(500),
              fontSize: 16,
              height: 1.5,
              color: Color(0xFF121212),
            ),
          ),
          SizedBox(height: 6),
          Text(
             authorClassification,
            textAlign: TextAlign.center,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight(400),
              fontSize: 14,
              height: 1.4,
              color: Color(0xFFA6A6A6),
            ),
          ),
        ],
      ),
    );
  }
}

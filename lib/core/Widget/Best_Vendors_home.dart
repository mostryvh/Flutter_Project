import 'package:flutter/material.dart';

class BestVendors extends StatelessWidget {
  final String imagePath;
  const BestVendors({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      height: 80,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Image.asset(imagePath, fit: BoxFit.cover),
    );
  }
}

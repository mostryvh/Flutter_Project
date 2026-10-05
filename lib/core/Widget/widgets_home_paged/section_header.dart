import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAll;
  const SectionHeader({super.key, required this.title, required this.onSeeAll});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight(800),
            fontSize: 18,
            height: 1.35,
            letterSpacing: 0.6,
            color: Color(0xFF121212),
          ),
        ),
        GestureDetector(
          onTap: onSeeAll,
          child: Text(
            "See all",
            style: TextStyle(
              fontFamily: 'Roboto',
              fontWeight: FontWeight(700),
              fontSize: 14,
              height: 1.40,
              letterSpacing: 0.3,
              color: Color(0xFF54408C),
            ),
          ),
        ),
      ],
    );
  }
}

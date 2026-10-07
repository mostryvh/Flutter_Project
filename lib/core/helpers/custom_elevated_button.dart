import 'package:flutter/material.dart';

class ElevatedButtonHelper extends StatelessWidget {
  final String textBottom;
  final VoidCallback onPressed;
  const ElevatedButtonHelper({super.key,required this.onPressed ,required this.textBottom,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF5B3F99),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(48),
          ),
        ),
        child: Text(
          textBottom,
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight(700),
            fontSize: 16,
            height: 1.5,
            letterSpacing: 0.3,
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}

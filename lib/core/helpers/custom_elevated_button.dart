import 'package:flutter/material.dart';

class ElevatedButtonHelper extends StatelessWidget {
  final String textBottom;
  final VoidCallback onPressed;
  final Color? backgroundColor; 
  final Color? textColor;
  const ElevatedButtonHelper({super.key,required this.onPressed ,required this.textBottom,this.backgroundColor,this.textColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor:backgroundColor?? Color(0xFF5B3F99),
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
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}

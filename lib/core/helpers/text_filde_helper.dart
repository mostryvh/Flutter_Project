import 'package:flutter/material.dart';

class Textfildehelper extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String labelText;

  const Textfildehelper({
    super.key,
    required this.controller,
    required this.hintText,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText,style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight(500),
          fontSize: 14,
          height: 1.40,
          color: Color(0xFF121212),
        ),),
        SizedBox(height: 6,),
        TextField(
          controller: controller,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(
              fontFamily: 'Roboto',
              color: Color(0xFFA6A6A6),
              fontSize: 14,
            ),
            filled: true,
            fillColor: Color(0xFFE8E8E8),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFFE8E8E8)),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color(0xFFE8E8E8)),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Color.fromARGB(255, 51, 31, 105)),
            ),
          ),
        ),
      ],
    );
  }
}

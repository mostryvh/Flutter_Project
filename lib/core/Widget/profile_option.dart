import 'package:flutter/material.dart';

class ProfileOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final VoidCallback onTap;

  const ProfileOption({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
      leading: CircleAvatar(
        radius: 22,
        backgroundColor: Color(0xFF54408C).withValues(alpha: 0.08),
        child: Icon(icon, color: Color(0xFF54408C), size: 24),
      ),

      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Roboto',
          fontWeight: FontWeight(500),
          fontSize: 16,
          height: 1.50,
          color: Color(0xFF121212),
        ),
      ),
      trailing: Icon(
        Icons.arrow_forward_ios,
        size: 16,
        color: Color(0xFFA6A6A6),
      ),
      onTap: onTap,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:flutter_application_1/core/helpers/app_routes.dart';
import 'package:flutter_application_1/core/Widget/profile_option.dart';
import 'package:flutter_application_1/core/helpers/shared_prefs_helper.dart';
import 'My_Acount.dart';

class ProfileScrean extends StatefulWidget {
  const ProfileScrean({super.key});

  @override
  State<ProfileScrean> createState() => _ProfileScreanState();
}

class _ProfileScreanState extends State<ProfileScrean> {
  String userName = "";
  String userEmail = "";

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  void _loadUserData() {
    setState(() {
      userName = SharedPrefsHelper.getData(key: "userName") ?? "no Name input";
      userEmail =
          SharedPrefsHelper.getData(key: "userEmail") ?? "no email input";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("profile"), centerTitle: true),

      body: Column(
        children: [
          Divider(color: Color(0xFFE8E8E8), thickness: 1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/profileImage.png'),
                ),
                SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      userName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight(700),
                        fontSize: 16,
                        height: 1.50,
                        letterSpacing: 0.3,
                        color: Color(0xFF121212),
                      ),
                    ),
                    Text(
                      userEmail,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontWeight: FontWeight(400),
                        fontSize: 14,
                        height: 1.40,
                        color: Color(0xFFA6A6A6),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    NavigationHelper.goTo(context, AppRoutes.login);
                  },
                  child: Text(
                    "Logout",
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight(700),
                      height: 1.40,
                      letterSpacing: 0.3,
                      color: Color(0xFFEF5A56),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(color: Color(0xFFE8E8E8), thickness: 1),

          ProfileOption(
            icon: Icons.person,
            title: "My Account",
            onTap: () async {
              await Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const MyAcount()),
                
              );
              _loadUserData();

             },
          ),
          SizedBox(height: 8),
          ProfileOption(
            icon: Icons.favorite,
            title: "You Favorite",
            onTap: () {
              NavigationHelper.goTo(context, AppRoutes.favorites);
            },
          ),
          SizedBox(height: 8),
          ProfileOption(
            icon: Icons.receipt,
            title: "OrdarHistory",
            onTap: () {
              NavigationHelper.goTo(context, AppRoutes.orderHistory);
            },
          ),
          SizedBox(height: 8),
          ProfileOption(
            icon: Icons.chat,
            title: "Help Center",
            onTap: () {
              NavigationHelper.goTo(context, AppRoutes.helpeCenter);
            },
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

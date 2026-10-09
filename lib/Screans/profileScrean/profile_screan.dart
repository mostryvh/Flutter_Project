import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:flutter_application_1/core/helpers/app_routes.dart';
import 'package:flutter_application_1/core/Widget/profile_option.dart';
import 'package:flutter_application_1/core/helpers/shared_prefs_helper.dart';
import 'package:flutter_application_1/core/helpers/custom_elevated_button.dart';

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
                    showModalBottomSheet(
                      context: context,
                      showDragHandle: true,
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20),
                        ),
                      ),
                      builder: (BuildContext context) {
                        return Container(
                          width: double.infinity,
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                            vertical: 16,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Logout",
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontWeight: FontWeight(700),
                                    fontSize: 18,
                                    color: Color(0xFF121212),
                                  ),
                                ),
                              ),

                              SizedBox(height: 12),

                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                                  style: TextStyle(
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight(400),
                                    fontSize: 16,
                                    height: 1.5,
                                    color: Color(0xFF121212),
                                  ),
                                ),
                              ),

                              SizedBox(height: 32),
                              ElevatedButtonHelper(
                                textBottom: "Log Out",
                                onPressed: () {
                                  SharedPrefsHelper.removeData(key:'userName');
                                  SharedPrefsHelper.removeData( key:'userEmail');
                                  NavigationHelper.goToAndClearStack(
                                    context,
                                    AppRoutes.login,
                                  );
                                },
                              ),
                              SizedBox(height: 14),

                              ElevatedButtonHelper(
                                textBottom: "Cancel",
                                backgroundColor: const Color(0xFFFAF9FD),
                                textColor: const Color(0xFF54408C),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
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
              await NavigationHelper.goTo(context, AppRoutes.myAcount);

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

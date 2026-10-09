import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:flutter_application_1/core/helpers/text_filde_helper.dart';
import 'package:flutter_application_1/core/helpers/custom_elevated_button.dart';
import 'package:flutter_application_1/core/helpers/shared_prefs_helper.dart';

class MyAcount extends StatefulWidget {
  const MyAcount({super.key});

  @override
  State<MyAcount> createState() => _MyAcountState();
}

class _MyAcountState extends State<MyAcount> {
  final TextEditingController nameMYAcount = TextEditingController();
  final TextEditingController emailMyAcount = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xFF121212)),
          onPressed: () {
            // لحل مشكله الاوفر فلو عند تركيز مؤشر الكتابه ومحالوه الانتقال للصقحه السابقه

            FocusScope.of(context).unfocus();
            Future.delayed(Duration(milliseconds: 150), () {
              if (!context.mounted) return;
              NavigationHelper.goBack(context);
            });
          },
        ),
        title: Text(
          "My Acount",
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight(700),
            fontSize: 20,
            height: 1.40,
            color: Color(0xFF121212),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Textfildehelper(
                labelText: "name",
                hintText: "mostafa",
                controller: nameMYAcount,
              ),
              SizedBox(height: 6),
              Textfildehelper(
                labelText: "email",
                hintText: "mostafa@gmail.com",
                controller: emailMyAcount,
              ),
              SizedBox(height: 16),
              ElevatedButtonHelper(
                onPressed: () {
                  String newName = nameMYAcount.text.trim();
                  String newEmail = emailMyAcount.text.trim();
                  if (newName.isNotEmpty && newEmail.isNotEmpty) {
                    SharedPrefsHelper.saveData(key: 'userName', value: newName);
                    SharedPrefsHelper.saveData(key: 'userEmail', value: newEmail);

                    FocusScope.of(context).unfocus();
                    Future.delayed(Duration(milliseconds: 150), () {
                      if (!context.mounted) return;
                      NavigationHelper.goBack(context);
                    });
                  }
                },
                textBottom: "Save Changes",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

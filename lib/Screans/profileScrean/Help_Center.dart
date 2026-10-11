import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/helpers/navigation_helper.dart';
import 'package:flutter_application_1/core/Widget/contact_card.dart';

class HelpCenter extends StatelessWidget {
  const HelpCenter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFF513C81),
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(255, 247, 243, 243)),
          onPressed: () {
            NavigationHelper.goBack(context);
          },
        ),
        title: Text(
          "Help Center",
          style: TextStyle(
            fontFamily: 'OpenSans',
            fontWeight: FontWeight(700),
            fontSize: 20,
            height: 1.40,
            color: Color(0xFFFFFFFF),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
           Container(
            width: double.infinity,   
            color:   Color(0xFF513C81),   
            padding:EdgeInsets.only(bottom: 32, left: 16, right: 16),
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 16),
                Text(
                  "Help Center",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight(700),
                    fontSize: 24,
                    color: Color(0xFFFFFFFF),
                    height: 1.35,
                    letterSpacing: -0.03
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Tell us how we can help 👋",
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight(400),
                    fontSize: 16,
                    height: 1.50,

                    color: Color(0xFFCABCEF),
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Chapter are standing by for service & support!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight(400),
                    fontSize: 16,
                    height: 1.50,
                    color: Color(0xFFCABCEF),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 28 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ContactCard(icon: Icons.email,
                title: "email",
                subtitle: "Send to your email",),
                SizedBox(width: 12,),
                ContactCard(icon: Icons.phone,
                title: "phone",
                subtitle: "Send to your phone",)
            
              ],
            ),
          )
        ]
      ),
    );
  }
}

import 'package:flutter/material.dart';

class VerificationScreen extends StatelessWidget {
  final String titleName;
  final String contactDetails;
  final String nextRouteName;

  const VerificationScreen({
    super.key,
    required this.titleName,
    required this.contactDetails,
    required this.nextRouteName,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 450),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Text(
                  titleName,
                  style: TextStyle(
                    fontFamily: 'OpenSans',
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFF121212),
                    height: 1.35,
                    letterSpacing: 0.03,
                  ),
                ),
                SizedBox(height: 12),
                Text(
                  "Please enter the code we just sent to\n$contactDetails",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: Color(0xFFA6A6A6),
                    height: 1.5,
                  ),
                ),
                SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [_codeBox(), _codeBox(), _codeBox(), _codeBox()],
                ),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "If you didn't receive a code? ",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        color: Color(0xFFA6A6A6),
                      ),
                    ),
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        onTap: () {
                          print("Resend code triggered");
                        },
                        child: Text(
                          "Resend",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF54408C),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, nextRouteName);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF54408C),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(48),
                      ),
                      elevation: 0,
                    ),
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFFFFFFF),
                        height: 1.5,
                        letterSpacing: 0.3,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _codeBox() {
    return Container(
      width: 52,
      height: 52,
      decoration: BoxDecoration(
        color: Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Color(0xFFE0E0E0)),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        maxLength: 1,
        style: TextStyle(
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.w700,
          fontSize: 24,
          height: 1.35,
          letterSpacing: -.03,
          color: Color(0xFF121212),
        ),
        decoration: InputDecoration(border: InputBorder.none, counterText: ""),
      ),
    );
  }
}

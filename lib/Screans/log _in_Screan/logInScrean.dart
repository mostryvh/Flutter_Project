import 'package:flutter/material.dart';

class Loginscrean extends StatefulWidget {
  const Loginscrean({super.key});

  @override
  State<Loginscrean> createState() => _Loginscrean();
}

class _Loginscrean extends State<Loginscrean> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailinput = TextEditingController();
    final TextEditingController paswinput = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 450),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 116.0,
                  left: 24.0,
                  right: 24.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Welcome Back 👋",
                      style: TextStyle(
                        fontFamily: 'OpenSans',
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                        height: 1.35,
                        letterSpacing: -.03,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Sign to your account",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        height: 1.50,
                        letterSpacing: 0,
                        color: Color(0xFFA6A6A6),
                      ),
                    ),
                    const SizedBox(height: 32),

                    const Text(
                      "Email",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.4,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 6),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: TextField(
                        controller: emailinput,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: "your email",
                          hintStyle: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFB8B8B8),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFF9F9F9),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    const Text(
                      "Password",
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        height: 1.4,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 6),
                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: TextField(
                        controller: paswinput,
                        keyboardType: TextInputType.visiblePassword,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Your password",
                          hintStyle: const TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFFB8B8B8),
                          ),
                          filled: true,
                          fillColor: const Color(0xFFF9F9F9),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: const Padding(
                            padding: EdgeInsets.only(right: 16.0),
                            child: Icon(
                              Icons.visibility_off_outlined,
                              color: Color(0xFFB8B8B8),
                              size: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),

                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          height: 1.4,
                          color: Color(0xFF54408C),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),

                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, "home");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF5B3F99),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(48),
                          ),
                        ),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            height: 1.5,
                            letterSpacing: 0.3,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don’t have an account? ",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w500,
                            fontSize: 16,
                            color: Color.fromARGB(255, 99, 99, 99),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "SignUp");
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              color: Color(0xFF54408C),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 24),

                    SizedBox(
                      height: 24,
                      child: Row(
                        children: const [
                          Expanded(
                            child: Divider(
                              color: Color(0xFFE8E8E8),
                              thickness: 1,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              "Or with",
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Color(0xFF999999),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Divider(
                              color: Color(0xFFE8E8E8),
                              thickness: 1,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.g_mobiledata,
                          color: Colors.blue,
                          size: 24,
                        ),
                        label: const Text(
                          "Sign in with Google",
                          style: TextStyle(
                            fontFamily: 'Circular Std',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF000E33),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            color: Color(0xFFE8E8E8),
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),

                    SizedBox(
                      height: 48,
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.apple,
                          color: Colors.black,
                          size: 24,
                        ),
                        label: const Text(
                          "Sign in with Apple",
                          style: TextStyle(
                            fontFamily: 'Circular Std',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xFF000E33),
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          backgroundColor: Colors.white,
                          side: const BorderSide(
                            color: Color(0xFFE8E8E8),
                            width: 1,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(56),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

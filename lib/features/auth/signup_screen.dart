import 'package:ecommerce_frontend_backend/features/auth/signin_screen.dart';
import 'package:ecommerce_frontend_backend/utils/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Create Account',
                style: TextStyle(
                  color: blackColor,
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.5,
                ),
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                placeholder: 'First Name',
                placeholderStyle:
                    TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
                decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                placeholder: 'Last Name',
                placeholderStyle:
                    TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
                decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                placeholder: 'Email Address',
                placeholderStyle:
                    TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
                decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 16),
              CupertinoTextField(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                placeholder: 'Password',
                placeholderStyle:
                    TextStyle(color: TextFiledTextColor.withOpacity(0.5)),
                decoration: BoxDecoration(
                  color: textFieldColor,
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              const SizedBox(height: 18),
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: CupertinoButton(
                  onPressed: () {},
                  child: const Text(
                    'Sign Up',
                    style: TextStyle(
                      color: whiteColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              RichText(
                text: TextSpan(
                  style: const TextStyle(
                    color: TextFiledTextColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                  children: [
                    const TextSpan(text: "You have an Account?"),
                    TextSpan(
                      text: ' Sign In',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const SigninScreen(),
                              ));
                        },
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Column(
                children: [
                  SocialLoginButton(
                    icon: FontAwesomeIcons.apple,
                    color: blackColor,
                    text: 'Continue with Apple',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
                  SocialLoginButton(
                    icon: FontAwesomeIcons.google,
                    color: const Color(0xFFDB4437),
                    text: 'Continue with Google',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
                  SocialLoginButton(
                    icon: FontAwesomeIcons.facebook,
                    color: const Color(0xFF4267B2),
                    text: 'Continue with Facebook',
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

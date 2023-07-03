import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lesson_13/l13-loginUI/widgets/auth_social_media_buttons.dart';
import 'package:lesson_13/l13-loginUI/widgets/auth_textfields.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFFFFFFF),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 24, right: 24, top: 48, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: 41,
                width: 41,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: const Color(0xFFE8ECF4)),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 19,
                ),
              ),
            ),
            const SizedBox(height: 32),
            const Text(
              'Welcome back! Glad to see you, Again!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 24),
            AuthTextfields(hintText: 'Username', onChanged: (value) {}),
            const SizedBox(height: 12),
            AuthTextfields(hintText: 'Email', onChanged: (value) {}),
            const SizedBox(height: 12),
            AuthTextfields(hintText: 'Password', onChanged: (value) {}),
            const SizedBox(height: 12),
            AuthTextfields(hintText: 'Confirm password', onChanged: (value) {}),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Register',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xFFE8ECF4),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text(
                    'Or Register with',
                    style: TextStyle(
                      color: Color(0xFF6A707C),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 1,
                    color: const Color(0xFFE8ECF4),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),
            AuthSocialMediaButtons(
              facebookOnTap: () {},
              googleOnTap: () {},
              appleOnTap: () {},
            ),
            Expanded(child: Container()),
            Align(
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(
                  text: 'Don`t have an account? ',
                  style: const TextStyle(color: Color(0xFF1E232C)),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Login Now',
                      style: const TextStyle(color: Color(0xFF35C2C1)),
                      recognizer: TapGestureRecognizer()..onTap = () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

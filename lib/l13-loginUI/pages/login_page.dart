import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:lesson_13/l13-loginUI/core/value_validators.dart';
import 'package:lesson_13/l13-loginUI/data/auth_users_info.dart';
import 'package:lesson_13/l13-loginUI/pages/forgot_password_page.dart';
import 'package:lesson_13/l13-loginUI/pages/register_page.dart';
import 'package:lesson_13/l13-loginUI/pages/welcome_page.dart';
import 'package:lesson_13/l13-loginUI/pages/widgets/auth_social_media_buttons.dart';
import 'package:lesson_13/l13-loginUI/pages/widgets/auth_textfields.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    TextEditingController passwordController = TextEditingController();

    final AuthenticationRepository _authenticationRepository =
        AuthenticationRepository();

    String passwordValue = '';
    String emailAddressValue = '';

    void _userLoggedIn() {
      final bool _isUserLoggedIn = _authenticationRepository
          .isEmailAndPasswordExists(emailAddressValue, passwordValue);
      if (_isUserLoggedIn) {
        Flushbar(
          message: 'Logged in successfully',
          duration: const Duration(seconds: 3),
        ).show(context);
      } else {
        FlushbarHelper.createError(message: 'Invalid email or password')
            .show(context);
      }
    }

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
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const WelcomePage(),
                  ),
                );
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
            const SizedBox(height: 32),
            AuthTextfields(
              hintText: 'Enter your email',
              controller: emailController,
              onChanged: (value) {
                emailAddressValue = value;
                log(value);
              },
              validator: validateEmailAddress(emailAddressValue),
            ),
            const SizedBox(height: 12),
            AuthTextfields(
              hintText: 'Enter your password',
              controller: passwordController,
              onChanged: (value) {
                passwordValue = value;
              },
              showOrHideIcon: true,
              validator: validatePassword(passwordValue),
            ),
            const SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ForgotPasswordPage(),
                    ),
                  );
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () => _userLoggedIn(),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Login',
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
                    'Or Login with',
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
                      text: 'Register Now',
                      style: const TextStyle(color: Color(0xFF35C2C1)),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => const RegisterPage(),
                            ),
                          );
                        },
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

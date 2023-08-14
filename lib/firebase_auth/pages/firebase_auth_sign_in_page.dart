import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_13/firebase_auth/bloc/auth_bloc.dart';
import 'package:lesson_13/firebase_auth/pages/firebase_auth_register_page.dart';
import 'package:lesson_13/firebase_auth/pages/widgets/firebase_auth_textformfield_widget.dart';
import 'package:lesson_13/l13-loginUI/pages/widgets/auth_textfields.dart';

class FirebaseAuthSignInPage extends StatefulWidget {
  const FirebaseAuthSignInPage({super.key});

  @override
  State<FirebaseAuthSignInPage> createState() => _FirebaseAuthSignInPageState();
}

class _FirebaseAuthSignInPageState extends State<FirebaseAuthSignInPage> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController =
      TextEditingController();
  String email = '';
  String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFF9A826),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Container()),
          const Padding(
            padding: EdgeInsets.all(24.0),
            child: Text(
              'Login',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Expanded(child: Container()),
          Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 48, left: 24, right: 24, bottom: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  FirebaseAuthTextFormfield(
                    hintText: 'Enter your email',
                    controller: _emailEditingController,
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(height: 32),
                  const Text(
                    'Password',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  FirebaseAuthTextFormfield(
                    hintText: 'Enter your password',
                    controller: _passwordEditingController,
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  const SizedBox(height: 24),
                  const Align(
                    alignment: Alignment.bottomRight,
                    child: Text('Forgot password'),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        if (password.isNotEmpty && email.isNotEmpty) {
                          context.read<AuthBloc>().add(
                                AuthEvent.signIn(email, password),
                              );
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('You logged in successfully'),
                              duration: Duration(seconds: 3),
                            ),
                          );
                        } else {
                          const SnackBar(
                            content:
                                Text('Check email and password and try again'),
                            duration: Duration(seconds: 3),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: const Color(0xFFF9A826),
                      ),
                      child: const Text('Login'),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Center(
                    child: RichText(
                      text: TextSpan(
                        text: 'Don`t have an account yet? Register ',
                        style: const TextStyle(color: Colors.black),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'here',
                              style: const TextStyle(
                                color: Color(0xFFF9A826),
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (_) =>
                                          const FirebaseAuthRegisterPage(),
                                    ),
                                  );
                                }),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 1,
                          color: const Color(0xFFADADAD),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text('Or login with'),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Container(
                          height: 1,
                          color: const Color(0xFFADADAD),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 48),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              blurRadius: 0.6,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SvgPicture.asset(
                              'assets/vectors/google_logo.svg'),
                        ),
                      ),
                      const SizedBox(width: 24),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                          boxShadow: const <BoxShadow>[
                            BoxShadow(
                              blurRadius: 0.6,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: SvgPicture.asset(
                              'assets/vectors/facebook_logo.svg'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

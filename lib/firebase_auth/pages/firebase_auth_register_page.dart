import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lesson_13/firebase_auth/pages/firebase_auth_sign_in_page.dart';
import 'package:lesson_13/firebase_auth/pages/widgets/firebase_auth_textformfield_widget.dart';

import '../bloc/auth_bloc.dart';

class FirebaseAuthRegisterPage extends StatefulWidget {
  const FirebaseAuthRegisterPage({super.key});

  @override
  State<FirebaseAuthRegisterPage> createState() =>
      _FirebaseAuthRegisterPageState();
}

class _FirebaseAuthRegisterPageState extends State<FirebaseAuthRegisterPage> {
  final TextEditingController _emailEditingController = TextEditingController();
  final TextEditingController _passwordEditingController =
      TextEditingController();
  final TextEditingController _confirmingPasswordEditingController =
      TextEditingController();
  String email = '';
  String password = '';
  String confirmingPassword = '';
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
              'Register',
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 48, left: 24, right: 24, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Email',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
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
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    FirebaseAuthTextFormfield(
                      hintText: 'Enter your password',
                      controller: _passwordEditingController,
                      onChanged: (value) {
                        password = value;
                      },
                    ),
                    const SizedBox(height: 24),
                    const Text(
                      'Confirm password',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    FirebaseAuthTextFormfield(
                      hintText: 'Confirm your password',
                      controller: _confirmingPasswordEditingController,
                      onChanged: (value) {
                        confirmingPassword = value;
                      },
                    ),
                    const SizedBox(height: 48),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
                      child: ElevatedButton(
                        onPressed: () {
                          if (password == confirmingPassword &&
                              email.isNotEmpty) {
                            context.read<AuthBloc>().add(
                                  AuthEvent.register(email, password),
                                );
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('You registered successfully'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text(
                                    'Check password or email and try again'),
                                duration: Duration(seconds: 3),
                              ),
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          shape: const StadiumBorder(),
                          backgroundColor: const Color(0xFFF9A826),
                        ),
                        child: const Text('Register'),
                      ),
                    ),
                    const SizedBox(height: 24),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'Already have an account? login ',
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
                                            const FirebaseAuthSignInPage(),
                                      ),
                                    );
                                  }),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

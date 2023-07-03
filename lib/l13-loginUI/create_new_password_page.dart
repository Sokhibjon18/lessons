import 'package:flutter/material.dart';
import 'package:lesson_13/l13-loginUI/auth_complete_page.dart';
import 'package:lesson_13/l13-loginUI/widgets/auth_textfields.dart';

class CreateNewPasswordPage extends StatelessWidget {
  const CreateNewPasswordPage({super.key});

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
              'Create new password',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 8),
            const Text(
              'Your new password must be unique from those previously used.',
              style: TextStyle(color: Color(0xFF8391A1)),
            ),
            const SizedBox(height: 24),
            AuthTextfields(hintText: 'New Password', onChanged: (value) {}),
            const SizedBox(height: 12),
            AuthTextfields(hintText: 'Confirm Password', onChanged: (value) {}),
            const SizedBox(height: 32),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const AuthCompletePage(),
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Text(
                  'Reset Password',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

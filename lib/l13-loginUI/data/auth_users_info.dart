import 'dart:developer';

import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

Map<String, String> users = {
  'something.smth@gmail.com': '123456',
  'apple.123@gmail.com': '102938',
};

void isEmailAndPasswordExists(
    String emailAddressValue,
    String passwordValue,
    TextEditingController emailController,
    TextEditingController passwordController,
    context) {
  if (users.containsKey(emailAddressValue) &&
      users.containsValue(passwordValue)) {
    Flushbar(
      message: 'Logged in successfully',
      duration: const Duration(seconds: 3),
    ).show(context);
    return;
  } else {
    emailController.clear();
    passwordController.clear();
    FlushbarHelper.createError(message: 'Invalid email or password')
        .show(context);

    return;
  }
}

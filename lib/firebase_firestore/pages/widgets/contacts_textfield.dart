// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ContactTextfield extends StatelessWidget {
  const ContactTextfield({
    Key? key,
    this.onChanged,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  final void Function(String)? onChanged;
  final String hintText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        border: const UnderlineInputBorder(),
        focusedBorder: const UnderlineInputBorder(),
        hintText: hintText,
      ),
    );
  }
}

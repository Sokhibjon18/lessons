import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthTextfields extends StatefulWidget {
  const AuthTextfields({
    super.key,
    required this.hintText,
    required this.onChanged,
    this.showOrHideIcon,
  });
  final String hintText;
  final void Function(String)? onChanged;
  final bool? showOrHideIcon;

  @override
  State<AuthTextfields> createState() => _AuthTextfieldsState();
}

class _AuthTextfieldsState extends State<AuthTextfields> {
  bool isIconVisible = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) => widget.onChanged,
      style: const TextStyle(
        fontSize: 17,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.w500,
          color: Color(0xFF8391A1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFF35C2C1)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: Color(0xFFE8ECF4)),
        ),
        suffixIcon: widget.showOrHideIcon == true
            ? IconButton(
                onPressed: () {
                  setState(() {
                    isIconVisible = !isIconVisible;
                  });
                },
                icon: isIconVisible == false
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              )
            : null,
      ),
      obscureText: isIconVisible,
    );
  }
}

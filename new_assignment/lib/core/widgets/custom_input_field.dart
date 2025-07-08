import 'package:flutter/material.dart';

Widget customInputField({
  required String hintText,
  String imgPath = '',
  required TextEditingController controller,
  required TextInputType keyboardType,
  bool obscureText = false,
  IconData? prefixIcon,
  IconData? suffixIcon,
  Function()? onSuffixIconPressed,
}) {
  return TextField(
    controller: controller,
    keyboardType: keyboardType,
    obscureText: obscureText,
    decoration: InputDecoration(
      hintText: hintText,
      prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
      suffixIcon: imgPath.isNotEmpty // Only show if imgPath is provided
          ? Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Image.asset(
                imgPath,
                height: 24,
                width: 24,
              ),
            )
          : null,
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Color(0xFFCBD5E1), width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
    ),
  );
}

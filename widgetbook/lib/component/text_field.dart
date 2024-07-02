import 'package:flutter/material.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

class CustomTextField extends StatelessWidget {

  const CustomTextField({
    super.key,
    required this.controller,
    required this.label,
    this.keyboardType,
    this.obscureText = false,
    this.hintText,
  });
  final TextEditingController controller;
  final String label;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        border: Border.all(color: const Color.fromRGBO(121, 116, 126, 1)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: label,
          border: InputBorder.none,
          hintText: hintText,
        ),
      ),
    );
  }
}

@widgetbook.UseCase(
  name: 'CustomTextField',
  type: CustomTextField,
)
CustomTextField customTextField(BuildContext context) {
  final TextEditingController emailController = TextEditingController();
  return CustomTextField(controller: emailController, label: 'メールアドレス');
}

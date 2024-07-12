import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {

  final String text;
  final VoidCallback? callback;

  const PrimaryButton({
    super.key,
    required this.text,
    this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Colors.pink
      ),
      onPressed: callback,
      child: Text(text)
    );
  }
}
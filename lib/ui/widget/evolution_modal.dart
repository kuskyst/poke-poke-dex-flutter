import 'package:flutter/material.dart';

class EvolutionModal extends StatelessWidget {

  final String image;

  const EvolutionModal({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Center(child: Column(
        children: [
          Image.network(image, width: 120, height: 120),
          ElevatedButton(
            child: const Text('close'),
            onPressed: () { Navigator.pop(context); },
          ),
        ]
      ))
    );
  }
}

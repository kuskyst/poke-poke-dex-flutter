import 'package:flutter/material.dart';

class EvolutionWidget extends StatelessWidget {

  final String image;
  final close;

  const EvolutionWidget({super.key, required this.image, this.close});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(child: Column(
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

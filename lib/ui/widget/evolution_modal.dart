import 'package:flutter/material.dart';
import 'package:poke_poke_dex/ui/widget/primary_button.dart';

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
          PrimaryButton(
            text: 'close',
            callback: () { Navigator.pop(context); },
          ),
        ]
      ))
    );
  }
}

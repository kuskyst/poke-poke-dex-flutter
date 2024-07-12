import 'package:flutter/material.dart';
import 'package:poke_poke_dex/ui/widget/evolution_modal.dart';
import 'package:poke_poke_dex/ui/widget/primary_button.dart';
import 'package:poke_poke_dex/ui/widget/progress_bar.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'EvolutionWidget1', type: EvolutionModal)
Widget evolutionWidget1(BuildContext context) {
  return const EvolutionModal(image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png');
}

@widgetbook.UseCase(name: 'EvolutionWidget2', type: EvolutionModal)
Widget evolutionWidget2(BuildContext context) {
  return const EvolutionModal(image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png');
}

@widgetbook.UseCase(name: 'ProgressBar',type: ProgressBar)
Widget circularProgressIndicator(BuildContext context) {
  return const ProgressBar();
}

@widgetbook.UseCase(name: 'PrimaryButton', type: PrimaryButton)
Widget primaryButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.only(top: 100),
    width: double.infinity,
    alignment: Alignment.center,
    child: Column(
      children: [
        PrimaryButton(text: 'enabled', callback: () =>()),
        const SizedBox(height: 16),
        const PrimaryButton(text: 'disabled')
      ]
    )
  );
}

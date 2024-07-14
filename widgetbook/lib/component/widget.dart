import 'package:flutter/material.dart';
import 'package:poke_poke_dex/ui/widget/evolution_modal.dart';
import 'package:poke_poke_dex/ui/widget/like_buttons.dart';
import 'package:poke_poke_dex/ui/widget/primary_button.dart';
import 'package:poke_poke_dex/ui/widget/progress_bar.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(name: 'EvolutionWidget1', type: EvolutionModal)
Widget evolutionWidget1(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    decoration: const BoxDecoration(color: Colors.yellow),
    child: PrimaryButton(
      text: 'pikachu',
      callback: () {
        showBottomSheet(
          context: context,
          showDragHandle: true,
          builder: (BuildContext context) {
            return const EvolutionModal(image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png');
          }
        );
      }
    )
  );
}

@widgetbook.UseCase(name: 'EvolutionWidget2', type: EvolutionModal)
Widget evolutionWidget2(BuildContext context) {
  return Container(
    alignment: Alignment.center,
    decoration: const BoxDecoration(color: Colors.blueGrey),
    child: PrimaryButton(
      text: 'mew',
      callback: () {
        showBottomSheet(
          context: context,
          showDragHandle: true,
          builder: (BuildContext context) {
            return const EvolutionModal(image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png');
          }
        );
      }
    )
  );
}

@widgetbook.UseCase(name: 'ProgressBar', type: ProgressBar)
Widget circularProgressIndicator(BuildContext context) {
  return const ProgressBar();
}

@widgetbook.UseCase(name: 'PrimaryButton', type: PrimaryButton)
Widget primaryButton(BuildContext context) {
  final button1 = context.knobs.string(label: 'button1', initialValue: 'enabled');
  final button2 = context.knobs.string(label: 'button2', initialValue: 'disabled');

  return Container(
    padding: const EdgeInsets.only(top: 100),
    width: double.infinity,
    alignment: Alignment.center,
    decoration: const BoxDecoration(color: Colors.white),
    child: Column(
      children: [
        PrimaryButton(text: button1, callback: () =>()),
        const SizedBox(height: 16),
        PrimaryButton(text: button2)
      ]
    )
  );
}

@widgetbook.UseCase(name: 'LikesButton', type: LikeButtons)
Widget likesButton(BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(100),
    width: double.infinity,
    alignment: Alignment.center,
    decoration: const BoxDecoration(color: Colors.white),
    child: const Column(
      children: [
        LikeButtons(star: false, heart: false),
        SizedBox(height: 40),
        LikeButtons(star: true, heart: true),
      ]
    )
  );
}

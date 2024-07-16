import 'package:flutter/material.dart';
import 'package:poke_poke_dex/ui/widget/detail_shimmer.dart';
import 'package:poke_poke_dex/ui/widget/evolution_modal.dart';
import 'package:poke_poke_dex/ui/widget/like_buttons.dart';
import 'package:poke_poke_dex/ui/widget/list_shimmer.dart';
import 'package:poke_poke_dex/ui/widget/primary_button.dart';
import 'package:poke_poke_dex/ui/widget/progress_bar.dart';
import 'package:poke_poke_dex/ui/widget/type_label.dart';
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
  return Container(
    padding: const EdgeInsets.only(top: 100),
    width: double.infinity,
    alignment: Alignment.center,
    decoration: const BoxDecoration(color: Colors.white),
    child: Column(
      children: [
        PrimaryButton(text: context.knobs.string(label: 'button1', initialValue: 'enabled'), callback: () =>()),
        const SizedBox(height: 16),
        PrimaryButton(text: context.knobs.string(label: 'button2', initialValue: 'disabled'))
      ]
    )
  );
}

@widgetbook.UseCase(name: 'ListShimmer', type: ListShimmer)
Widget listShimmer(BuildContext context) {
  return Container(
    width: double.infinity,
    alignment: Alignment.center,
    decoration: const BoxDecoration(color: Colors.white),
    child: ListShimmer()
  );
}

@widgetbook.UseCase(name: 'DetailShimmer', type: DetailShimmer)
Widget detailShimmer(BuildContext context) {
  return Container(
    width: double.infinity,
    alignment: Alignment.center,
    decoration: const BoxDecoration(color: Colors.white),
    child: DetailShimmer()
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
        SizedBox(height: 16),
        LikeButtons(star: true, heart: true),
      ]
    )
  );
}

@widgetbook.UseCase(name: 'TypeLabel', type: TypeLabel)
Widget typeLabel(BuildContext context) {
  final typeList = TypeLabel(type: '').backColor.keys.toList();

  return Container(
    width: double.infinity,
    alignment: Alignment.center,
    decoration: const BoxDecoration(color: Colors.white),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeLabel(type: context.knobs.list(label: 'type1', options: typeList, initialOption: 'Normal')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type2', options: typeList, initialOption: 'Fire')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type3', options: typeList, initialOption: 'Water'))
          ]
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeLabel(type: context.knobs.list(label: 'type4', options: typeList, initialOption: 'Grass')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type5', options: typeList, initialOption: 'Electric')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type6', options: typeList, initialOption: 'Ice'))
          ]
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeLabel(type: context.knobs.list(label: 'type7', options: typeList, initialOption: 'Fighting')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type8', options: typeList, initialOption: 'Poison')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type9', options: typeList, initialOption: 'Ground'))
          ]
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeLabel(type: context.knobs.list(label: 'type10', options: typeList, initialOption: 'Flying')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type11', options: typeList, initialOption: 'Psychic')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type12', options: typeList, initialOption: 'Bug'))
          ]
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeLabel(type: context.knobs.list(label: 'type13', options: typeList, initialOption: 'Rock')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type14', options: typeList, initialOption: 'Ghost')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type15', options: typeList, initialOption: 'Dragon'))
          ]
        ),
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TypeLabel(type: context.knobs.list(label: 'type16', options: typeList, initialOption: 'Dark')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type17', options: typeList, initialOption: 'Steel')),
            const SizedBox(width: 30),
            TypeLabel(type: context.knobs.list(label: 'type18', options: typeList, initialOption: 'Fairy'))
          ]
        )
      ]
    )
  );
}

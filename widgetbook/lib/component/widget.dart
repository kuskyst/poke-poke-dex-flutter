import 'package:flutter/material.dart';
import 'package:poke_poke_dex/ui/widget/evolution_widget.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

@widgetbook.UseCase(
  name: 'EvolutionWidget1',
  type: EvolutionWidget,
)
EvolutionWidget evolutionWidget1(BuildContext context) {
  return const EvolutionWidget(image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png');
}

@widgetbook.UseCase(
  name: 'EvolutionWidget2',
  type: EvolutionWidget,
)
EvolutionWidget evolutionWidget2(BuildContext context) {
  return const EvolutionWidget(image: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png');
}
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:poke_poke_dex/viewmodel/pokemon_viewmodel.dart';


class PokemonDetailScreen extends HookConsumerWidget {

  final String id;

  const PokemonDetailScreen({
    super.key,
    required this.id
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final vm = ref.watch(pokemonViewModel);
    vm.fetchPokemon(id);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Detail'),
      ),
      body: vm.pokemon.id.isEmpty
      ? const Center(child: CircularProgressIndicator())
      : Center(child:
        Column(children: [
          Image.network(vm.pokemon.image, width: 120, height: 120),
          Table(children: [
            TableRow(children: [
              const Text('No.'),
              Text(vm.pokemon.number)
            ]),
            TableRow(children: [
              const Text('name.'),
              Text(vm.pokemon.name)
            ]),
          ])
        ])
      )
    );
  }

}
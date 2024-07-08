import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:poke_poke_dex_flutter/viewmodel/pokemon_viewmodel.dart';


class PokemonDetailScreen extends HookConsumerWidget {

  final String id;

  const PokemonDetailScreen({
    super.key,
    required this.id
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final vm = ref.watch(pokemonViewModel);
    //vm.fetchPokemon(id);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Detail'),
      ),
      body: Center(child:
        Column(children: [
          Text(id), 
          Text(id)
        ])
      )
    );
  }

}
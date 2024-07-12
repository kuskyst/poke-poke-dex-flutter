import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poke_poke_dex/ui/widget/evolution_modal.dart';
import 'package:poke_poke_dex/ui/widget/like_buttons.dart';
import 'package:poke_poke_dex/ui/widget/progress_bar.dart';

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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Pokemon Detail'),
      ),
      body: vm.pokemon.id.isEmpty
      ? const ProgressBar()
      : Padding(padding: const EdgeInsets.all(20), child: Center(
        child: Column(
          children: [
            Image.network(vm.pokemon.image, width: 120, height: 120),
            Padding(padding: const EdgeInsets.all(30), child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ const Text('No.'), Text(vm.pokemon.number) ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ const Text('name.'), Text(vm.pokemon.name) ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ const Text('classification.'), Text(vm.pokemon.classification ?? '') ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [ const Text('types.'), Text(vm.pokemon.types!.join(' / ')) ]
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('evolutions.'),
                    vm.pokemon.evolutions!.isEmpty
                    ? const Text('-')
                    : TextButton(
                        child: Text(vm.pokemon.evolutions!.first!.name),
                        onPressed: () {
                          showModalBottomSheet(
                            context: context,
                            showDragHandle: true,
                            useSafeArea: true,
                            backgroundColor: Colors.white,
                            builder: (BuildContext context) {
                              return EvolutionModal(image: vm.pokemon.evolutions!.first!.image);
                            }
                          );
                        }
                      )
                  ]
                ),
                const SizedBox(height: 40),
                LikeButtons(
                  star: vm.pokemon.id.isEmpty,
                  starCallback: (isLiked) async {
                    return !isLiked;
                  },
                  heart: vm.pokemon.id.isNotEmpty,
                  heartCallback: (isLiked) async {
                    return !isLiked;
                  },
                )
              ]
            ))
          ]
        )
      ))
    );
  }

}
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poke_poke_dex/ui/widget/list_shimmer.dart';

import 'package:poke_poke_dex/viewmodel/pokemon_viewmodel.dart';
import 'package:shimmer/shimmer.dart';

class PokemonListScreen extends HookConsumerWidget {

  const PokemonListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final vm = ref.watch(pokemonViewModel);
    vm.fetchPokemons(151);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Pokemon List'),
      ),
      body: vm.pokemons.isEmpty
      ? ListShimmer()
      : ListView.builder(
        itemCount: vm.pokemons.length,
        itemBuilder: (context, index) {
          return ListTile(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))
            ),
            leading: Image.network(
              vm.pokemons[index].image,
              width: 40,
              height: 40,
            ),
            title: Text('No. ${vm.pokemons[index].number}'),
            subtitle: Text(vm.pokemons[index].name),
            onTap: () {
              context.push('/detail', extra: vm.pokemons[index].id);
            }
          );
        },
      ),
    );
  }

}
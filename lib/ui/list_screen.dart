import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:poke_poke_dex/viewmodel/pokemon_viewmodel.dart';

class PokemonListScreen extends HookConsumerWidget {

  const PokemonListScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    final vm = ref.watch(pokemonViewModel);
    vm.fetchPokemons(151);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon List'),
      ),
      body: vm.pokemons.isEmpty
      ? const Center(child: CircularProgressIndicator())
      : ListView.builder(
        itemCount: vm.pokemons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              vm.pokemons[index].image,
              width: 40,
              height: 40,
            ),
            title: Text('No. ${vm.pokemons[index].number}'),
            subtitle: Text(vm.pokemons[index].name),
            trailing: const Text('＞'),
            onTap: () {},
          );
        },
      ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewmodel/pokemon_viewmodel.dart';

class PokemonListView extends StatelessWidget {

  const PokemonListView({super.key});

  @override
  Widget build(BuildContext context) {

    final pokemonsViewModel = Provider.of<PokemonViewModel>(context);

    pokemonsViewModel.fetchPokemons(151);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon List'),
      ),
      body: pokemonsViewModel.pokemons.isEmpty
      ? const Center(child: CircularProgressIndicator())
      : ListView.builder(
        itemCount: pokemonsViewModel.pokemons.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(
              pokemonsViewModel.pokemons[index].image,
              width: 40,
              height: 40,
            ),
            title: Text('No. ${pokemonsViewModel.pokemons[index].number}'),
            subtitle: Text(pokemonsViewModel.pokemons[index].name),
            trailing: const Text('＞'),
            onTap: () {},
          );
        },
      ),
    );
  }

}
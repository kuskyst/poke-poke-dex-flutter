import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'ui/list_view.dart';
import 'viewmodel/pokemon_viewmodel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => PokemonViewModel(),
      child: const AppRoot(),
    )
  );
}

class AppRoot extends StatelessWidget {

  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemons',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: const PokemonListView(),
    );
  }
}
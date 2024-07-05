import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'ui/list_screen.dart';

main() => runApp(const ProviderScope(child: AppRoot()));

class AppRoot extends StatelessWidget {

  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokemons',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: const PokemonListScreen(),
    );
  }
}
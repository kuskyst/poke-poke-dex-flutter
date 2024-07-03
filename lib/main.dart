import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import 'list_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initHiveForFlutter();
  runApp(const AppRoot());
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
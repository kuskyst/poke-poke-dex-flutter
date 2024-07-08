import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'ui/list_screen.dart';

void main() => runApp(const ProviderScope(child: AppRoot()));

class AppRoot extends HookConsumerWidget {

  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final client = ValueNotifier<GraphQLClient>(
      GraphQLClient(
        link: HttpLink('https://graphql-pokemon2.vercel.app'),
        cache: GraphQLCache(),
    ));
    
    return MaterialApp(
      title: 'Pokemons',
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      home: GraphQLProvider(
        client: client,
        child: const PokemonListScreen()),
    );
  }
}
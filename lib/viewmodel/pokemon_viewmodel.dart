import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../api/entity/pokemon.dart';
import '../api/graphql/pokemon.graphql.dart';

final pokemonViewModel = ChangeNotifierProvider((_) => PokemonViewModel());

class PokemonViewModel extends ChangeNotifier {

  late List<Pokemon> _pokemons;
  List<Pokemon> get pokemons => _pokemons;
  late GraphQLClient client;

  PokemonViewModel() {
    _pokemons = [];
    final HttpLink link = HttpLink(
      'https://graphql-pokemon2.vercel.app',
    );

    client = GraphQLClient(
      link: link,
      cache: GraphQLCache(),
    );
  }


  fetchPokemons(int first) async {

    final result = useQuery$Pokemons(
      Options$Query$Pokemons(
        variables: Variables$Query$Pokemons(first: 151),
      ),
    ).result;

    if (result.hasException) {
      log('GraphQL Exception: ${result.exception.toString()}');
    } else {
       _pokemons = (result.parsedData?.pokemons ?? [])
        .map((pokemon) => Pokemon(
          id: pokemon?.id ?? '',
          name: pokemon?.name ?? '',
          number: pokemon?.number ?? '',
          image: pokemon?.image ?? ''
        )).toList();

    notifyListeners();
    }
  }
}

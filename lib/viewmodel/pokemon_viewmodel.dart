import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:poke_poke_dex_flutter/api/entity/pokemon.dart';

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


  Future<void> fetchPokemons(int first) async {
    final QueryOptions options = QueryOptions(
      document: gql('''
        query {
          pokemons(first: $first) {
            id
            name
            number
            image
          }
        }
      '''),
    );

    final QueryResult result = await client.query(options);

    if (result.hasException) {
      log('GraphQL Exception: ${result.exception.toString()}');
      return;
    }

    _pokemons = (result.data!['pokemons'] as List)
        .map((pokemon) => Pokemon(
              id: pokemon['id'],
              name: pokemon['name'],
              number: pokemon['number'],
              image: pokemon['image']
            ))
        .toList();

    notifyListeners();
  }
}

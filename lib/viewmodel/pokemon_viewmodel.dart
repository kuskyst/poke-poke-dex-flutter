import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:poke_poke_dex/api/entity/pokemon.dart';
import 'package:poke_poke_dex/api/graphql/pokemon.graphql.dart';
import 'package:poke_poke_dex/api/graphql/pokemons.graphql.dart';

final pokemonViewModel = ChangeNotifierProvider((_) => PokemonViewModel());

class PokemonViewModel extends ChangeNotifier {

  List<Pokemon> _pokemons = [];
  List<Pokemon> get pokemons => _pokemons;

  Pokemon _pokemon = Pokemon(id: '', name:'', number: '', image: '');
  Pokemon get pokemon => _pokemon;

  Future<void> fetchPokemons(int first) async {

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

      // notifyListeners();
    }
  }

Future<void> fetchPokemon(String id) async {

    final result = useQuery$Pokemon(
      Options$Query$Pokemon(
        variables: Variables$Query$Pokemon(id: id),
      ),
    ).result;

    if (result.hasException) {
      log('GraphQL Exception: ${result.exception.toString()}');
    } else {
      _pokemon = Pokemon(
        id: result.parsedData?.pokemon?.id ?? '',
        name: result.parsedData?.pokemon?.name ?? '',
        number: result.parsedData?.pokemon?.number ?? '',
        image: result.parsedData?.pokemon?.image ?? '');
      // notifyListeners();
    }
  }
}

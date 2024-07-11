import 'package:flutter/material.dart';
import 'package:poke_poke_dex/api/client/pokeapi_client.dart';
import 'package:poke_poke_dex/ui/screen/detail_screen.dart';
import 'package:poke_poke_dex/ui/screen/list_screen.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart' as widgetbook;

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

@widgetbook.UseCase(
  name: 'ListScreen',
  type: PokemonListScreen,
)
ProviderScope listSscreen(BuildContext context) {
  return ProviderScope(
    child: GraphQLProvider(
      client: client,
      child: const PokemonListScreen()));
}

@widgetbook.UseCase(
  name: 'DetailScreen',
  type: PokemonDetailScreen,
)
ProviderScope detailSscreen(BuildContext context) {
  return ProviderScope(
    child: GraphQLProvider(
      client: client,
      child: const PokemonDetailScreen(id: 'UG9rZW1vbjowMjU=')));
}

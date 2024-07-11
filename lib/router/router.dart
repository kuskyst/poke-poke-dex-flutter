import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:poke_poke_dex/api/client/client.dart';

import 'package:poke_poke_dex/ui/screen/detail_screen.dart';
import 'package:poke_poke_dex/ui/screen/list_screen.dart';

final goRouter = GoRouter(

  initialLocation: '/list',

  routes: [
    GoRoute(
      path: '/list',
      name: 'list',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: GraphQLProvider(client: client, child: const PokemonListScreen())
        );
      },
    ),

    GoRoute(
      path: '/detail',
      name: 'detail',
      pageBuilder: (context, state) {
        return MaterialPage(
          key: state.pageKey,
          child: GraphQLProvider(client: client, child: PokemonDetailScreen(id: state.extra as String))
        );
      },
    ),

  ],

  errorPageBuilder: (context, state) => MaterialPage(
    key: state.pageKey,
    child: Scaffold(
      body: Center(
        child: Text(state.error.toString()),
      ),
    ),
  ),
);
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'package:poke_poke_dex/router/router.dart';

void main() => runApp(const ProviderScope(child: AppRoot()));

class AppRoot extends HookConsumerWidget {

  const AppRoot({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerDelegate: goRouter.routerDelegate,
      routeInformationParser: goRouter.routeInformationParser,
      routeInformationProvider: goRouter.routeInformationProvider,

      title: 'Pokemons',
      theme: ThemeData(
        primarySwatch: Colors.pink
      )
    );
  }
}
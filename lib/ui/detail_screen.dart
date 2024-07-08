import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PokemonDetailScreen extends HookConsumerWidget {

  final String id;

  const PokemonDetailScreen({
    super.key,
    required this.id
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemon Detail'),
      ),
      body: Center(child: Text(id))
    );
  }


}
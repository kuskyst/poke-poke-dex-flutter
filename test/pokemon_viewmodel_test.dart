import 'package:flutter_test/flutter_test.dart';
import 'package:poke_poke_dex/viewmodel/pokemon_viewmodel.dart';


void main() {
  group('pokemon_viewmodel_list', () {

    final vm = PokemonViewModel();

    setUpAll(() async {
      TestWidgetsFlutterBinding.ensureInitialized();
    });

    test('pokemons default', () {
      expect(vm.pokemons.isEmpty, true);
    });

    test('pokemons 151', () async {
      // await vm.fetchPokemons(151);
      // expect(vm.pokemons.isNotEmpty, true);
      // expect(vm.pokemons.length, 151);
    });

    tearDownAll(() async {

    });

  });

    group('pokemon_viewmodel_detail', () {

    final vm = PokemonViewModel();

    setUpAll(() async {
      TestWidgetsFlutterBinding.ensureInitialized();
    });

    test('pokemon default', () {
      expect(vm.pokemon.id.isEmpty, true);
      expect(vm.pokemon.name.isEmpty, true);
      expect(vm.pokemon.number.isEmpty, true);
      expect(vm.pokemon.image.isEmpty, true);
      expect(vm.pokemon.classification?.isEmpty ?? true, true);
      expect(vm.pokemon.types?.isEmpty ?? true, true);
      expect(vm.pokemon.evolutions?.isEmpty ?? true, true);
    });

    test('pokemon 1', () async {
      // await vm.fetchPokemon('');
    });

    tearDownAll(() async {

    });

  });

}
import 'package:flutter_test/flutter_test.dart';
import 'package:poke_poke_dex/viewmodel/mark_viewmodel.dart';

void main() {
  group('mark_viewmodel', () {

    TestWidgetsFlutterBinding.ensureInitialized();
    final vm = MarkViewmodel();

    test('mark default', () {
      expect(vm.mark, null);
    });

  });
}

import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:isar/isar.dart';
import 'package:poke_poke_dex/isar/entity/mark.dart';
import 'package:poke_poke_dex/viewmodel/mark_viewmodel.dart';

void main() {
  group('mark_viewmodel', () {

    late Isar isar;
    late Directory dir;
    final vm = MarkViewmodel();

    setUpAll(() async {
      // TestWidgetsFlutterBinding.ensureInitialized();
      await Isar.initializeIsarCore(download: true);

      dir = await Directory.systemTemp.createTemp();
      isar = await Isar.open([MarkSchema], directory: dir.path);
    });

    test('mark default', () {
      expect(vm.mark, null);
    });

    test('mark noExist', () async {
      await vm.fetchMarks('xxx');
      expect(vm.mark.id is Id, true);
      expect(vm.mark.inId, 'xxx');
      expect(vm.mark.star, false);
      expect(vm.mark.heart, false);
    });

    test('mark on star', () async {
      await vm.fetchMarks('x1');
      await vm.putMark(vm.mark..star = true);
      expect(vm.mark.id is Id, true);
      expect(vm.mark.inId, 'x1');
      expect(vm.mark.star, true);
      expect(vm.mark.heart, false);
    });

    test('mark off star', () async {
      await vm.fetchMarks('x1');
      await vm.putMark(vm.mark..star = false);
      expect(vm.mark.id is Id, true);
      expect(vm.mark.inId, 'x1');
      expect(vm.mark.star, false);
      expect(vm.mark.heart, false);
    });

    test('mark on heart', () async {
      await vm.fetchMarks('x2');
      await vm.putMark(vm.mark..heart = true);
      expect(vm.mark.id is Id, true);
      expect(vm.mark.inId, 'x2');
      expect(vm.mark.star, false);
      expect(vm.mark.heart, true);
    });

    test('mark off heart', () async {
      await vm.fetchMarks('x2');
      await vm.putMark(vm.mark..heart = false);
      expect(vm.mark.id is Id, true);
      expect(vm.mark.inId, 'x2');
      expect(vm.mark.star, false);
      expect(vm.mark.heart, false);
    });

    test('mark on star & heart', () async {
      await vm.fetchMarks('x3');
      await vm.putMark(
        vm.mark
        ..star = true
        ..heart = true
    );
      expect(vm.mark.id is Id, true);
      expect(vm.mark.inId, 'x3');
      expect(vm.mark.star, true);
      expect(vm.mark.heart, true);
    });

    test('mark off star & heart', () async {
      await vm.fetchMarks('x3');
      await vm.putMark(
        vm.mark
        ..star = false
        ..heart = false
    );
      expect(vm.mark.id is Id, true);
      expect(vm.mark.inId, 'x3');
      expect(vm.mark.star, false);
      expect(vm.mark.heart, false);
    });

    tearDownAll(() async {
      await isar.close();
      await dir.delete(recursive: true);
    });

  });
}

import 'package:flutter/foundation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:poke_poke_dex/isar/client/isar_client.dart';
import 'package:poke_poke_dex/isar/entity/mark.dart';

final markViewModel = ChangeNotifierProvider((_) => MarkViewmodel());

class MarkViewmodel extends ChangeNotifier {

  Mark? _mark;
  get mark => _mark;

  Future<void> fetchMarks(String inId) async {
    if (!kIsWeb) {
      final isar = Isar.getInstance()?.isOpen ?? false
        ? Isar.getInstance() : await isarOpen();
      _mark = (await isar!.marks.filter().inIdMatches(inId).findFirst());
      _mark ??= Mark(inId: inId);
    } else {
      _mark = Mark(inId: inId);
    }
    
  }

  Future<void> putMark(Mark mark) async {
    if (!kIsWeb) {
      final isar = Isar.getInstance()?.isOpen ?? false
        ? Isar.getInstance() : await isarOpen();
      await isar!.writeTxn(() async {
        await isar.marks.put(mark);
      });
    }
      fetchMarks(mark.inId);
  }

}
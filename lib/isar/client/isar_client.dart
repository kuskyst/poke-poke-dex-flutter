
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:poke_poke_dex/isar/entity/mark.dart';

Future<Isar> isarOpen() async {
  final dir = await getApplicationDocumentsDirectory();
  final isar = await Isar.open(
    [MarkSchema],
    directory: dir.path,
  );
  return isar;
}
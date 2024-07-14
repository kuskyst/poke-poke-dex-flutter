import 'package:isar/isar.dart';

part 'mark.g.dart';

@collection
class Mark {

  Id id = Isar.autoIncrement;

  @Index(unique: true)
  String inId;

  bool heart;
  bool star;

  Mark({
    required this.inId,
    this.heart = false,
    this.star = false
  });

}
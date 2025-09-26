import 'package:isar/isar.dart';

part 'location.g.dart';

@collection
class Location {
  Id id = Isar.autoIncrement;
  
  @Index(unique: true)
  late String apelidoPosto;
  
  String? descricaoLocalizacao;
  
  DateTime createdAt = DateTime.now();
}

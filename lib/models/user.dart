import 'package:isar/isar.dart';

part 'user.g.dart';

@collection
class User {
  Id id = Isar.autoIncrement;
  
  late String supabaseId; // UUID do Supabase
  
  late String nome;
  
  @Index(unique: true)
  late String email;
  
  @Enumerated(EnumType.name)
  late UserPerfil perfil;
  
  bool ativo = true;
  
  DateTime createdAt = DateTime.now();
}

enum UserPerfil {
  administrador,
  monitor
}

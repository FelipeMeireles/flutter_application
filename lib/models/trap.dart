import 'package:isar/isar.dart';

part 'trap.g.dart';

@collection
class Trap {
  Id id = Isar.autoIncrement;
  
  late String supabaseId; // UUID do Supabase
  
  @Index(unique: true)
  late String trapId; // Ex: DCM-001
  
  late String apelidoPosto;
  
  String? descricaoLocalizacao;
  
  double? latitude;
  double? longitude;
  
  late DateTime dataInstalacao;
  
  @Enumerated(EnumType.name)
  TrapStatus status = TrapStatus.ativa;
  
  String? responsavelInstalacao;
  
  late String qrPayload;
  
  DateTime createdAt = DateTime.now();
  
  // Flag para sincronização
  bool needsSync = false;
}

enum TrapStatus {
  ativa,
  inativa,
  removida
}

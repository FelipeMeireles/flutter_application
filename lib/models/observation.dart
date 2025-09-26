import 'package:isar/isar.dart';

part 'observation.g.dart';

@collection
class Observation {
  Id id = Isar.autoIncrement;
  
  late String supabaseId; // UUID do Supabase
  
  late String trapId; // Referência ao trap_id
  
  late DateTime dataObservacao;
  
  late bool materialBiologico;
  
  @Enumerated(EnumType.name)
  FaseDetectada? faseDetectada;
  
  @Enumerated(EnumType.name)
  QuantidadeEstimada? qtdeEstimada;
  
  bool? aguaPresente;
  
  @Enumerated(EnumType.name)
  CondicoesIsca? condicoesIsca;
  
  @Enumerated(EnumType.name)
  AcaoTomada? acaoTomada;
  
  String? fotoUrl;
  String? fotoLocalPath; // Para armazenar foto offline
  
  late String responsavelId; // UUID do usuário
  
  String? observacoes;
  
  DateTime createdAt = DateTime.now();
  
  // Flag para sincronização
  bool needsSync = false;
}

enum FaseDetectada {
  ovos,
  larvas,
  pupas
}

enum QuantidadeEstimada {
  zero,
  baixa,
  media,
  alta
}

enum CondicoesIsca {
  integra,
  suja,
  comFolhas,
  tombada,
  semAgua
}

enum AcaoTomada {
  limpeza,
  reposicaoAgua,
  substituicao,
  semAcao
}

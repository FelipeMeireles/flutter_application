// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'observation.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetObservationCollection on Isar {
  IsarCollection<Observation> get observations => this.collection();
}

const ObservationSchema = CollectionSchema(
  name: r'Observation',
  id: 7013591097600907058,
  properties: {
    r'acaoTomada': PropertySchema(
      id: 0,
      name: r'acaoTomada',
      type: IsarType.string,
      enumMap: _ObservationacaoTomadaEnumValueMap,
    ),
    r'aguaPresente': PropertySchema(
      id: 1,
      name: r'aguaPresente',
      type: IsarType.bool,
    ),
    r'condicoesIsca': PropertySchema(
      id: 2,
      name: r'condicoesIsca',
      type: IsarType.string,
      enumMap: _ObservationcondicoesIscaEnumValueMap,
    ),
    r'createdAt': PropertySchema(
      id: 3,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'dataObservacao': PropertySchema(
      id: 4,
      name: r'dataObservacao',
      type: IsarType.dateTime,
    ),
    r'faseDetectada': PropertySchema(
      id: 5,
      name: r'faseDetectada',
      type: IsarType.string,
      enumMap: _ObservationfaseDetectadaEnumValueMap,
    ),
    r'fotoLocalPath': PropertySchema(
      id: 6,
      name: r'fotoLocalPath',
      type: IsarType.string,
    ),
    r'fotoUrl': PropertySchema(
      id: 7,
      name: r'fotoUrl',
      type: IsarType.string,
    ),
    r'materialBiologico': PropertySchema(
      id: 8,
      name: r'materialBiologico',
      type: IsarType.bool,
    ),
    r'needsSync': PropertySchema(
      id: 9,
      name: r'needsSync',
      type: IsarType.bool,
    ),
    r'observacoes': PropertySchema(
      id: 10,
      name: r'observacoes',
      type: IsarType.string,
    ),
    r'qtdeEstimada': PropertySchema(
      id: 11,
      name: r'qtdeEstimada',
      type: IsarType.string,
      enumMap: _ObservationqtdeEstimadaEnumValueMap,
    ),
    r'responsavelId': PropertySchema(
      id: 12,
      name: r'responsavelId',
      type: IsarType.string,
    ),
    r'supabaseId': PropertySchema(
      id: 13,
      name: r'supabaseId',
      type: IsarType.string,
    ),
    r'trapId': PropertySchema(
      id: 14,
      name: r'trapId',
      type: IsarType.string,
    )
  },
  estimateSize: _observationEstimateSize,
  serialize: _observationSerialize,
  deserialize: _observationDeserialize,
  deserializeProp: _observationDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _observationGetId,
  getLinks: _observationGetLinks,
  attach: _observationAttach,
  version: '3.1.0+1',
);

int _observationEstimateSize(
  Observation object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.acaoTomada;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.condicoesIsca;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.faseDetectada;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  {
    final value = object.fotoLocalPath;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fotoUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.observacoes;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.qtdeEstimada;
    if (value != null) {
      bytesCount += 3 + value.name.length * 3;
    }
  }
  bytesCount += 3 + object.responsavelId.length * 3;
  bytesCount += 3 + object.supabaseId.length * 3;
  bytesCount += 3 + object.trapId.length * 3;
  return bytesCount;
}

void _observationSerialize(
  Observation object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.acaoTomada?.name);
  writer.writeBool(offsets[1], object.aguaPresente);
  writer.writeString(offsets[2], object.condicoesIsca?.name);
  writer.writeDateTime(offsets[3], object.createdAt);
  writer.writeDateTime(offsets[4], object.dataObservacao);
  writer.writeString(offsets[5], object.faseDetectada?.name);
  writer.writeString(offsets[6], object.fotoLocalPath);
  writer.writeString(offsets[7], object.fotoUrl);
  writer.writeBool(offsets[8], object.materialBiologico);
  writer.writeBool(offsets[9], object.needsSync);
  writer.writeString(offsets[10], object.observacoes);
  writer.writeString(offsets[11], object.qtdeEstimada?.name);
  writer.writeString(offsets[12], object.responsavelId);
  writer.writeString(offsets[13], object.supabaseId);
  writer.writeString(offsets[14], object.trapId);
}

Observation _observationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Observation();
  object.acaoTomada =
      _ObservationacaoTomadaValueEnumMap[reader.readStringOrNull(offsets[0])];
  object.aguaPresente = reader.readBoolOrNull(offsets[1]);
  object.condicoesIsca = _ObservationcondicoesIscaValueEnumMap[
      reader.readStringOrNull(offsets[2])];
  object.createdAt = reader.readDateTime(offsets[3]);
  object.dataObservacao = reader.readDateTime(offsets[4]);
  object.faseDetectada = _ObservationfaseDetectadaValueEnumMap[
      reader.readStringOrNull(offsets[5])];
  object.fotoLocalPath = reader.readStringOrNull(offsets[6]);
  object.fotoUrl = reader.readStringOrNull(offsets[7]);
  object.id = id;
  object.materialBiologico = reader.readBool(offsets[8]);
  object.needsSync = reader.readBool(offsets[9]);
  object.observacoes = reader.readStringOrNull(offsets[10]);
  object.qtdeEstimada = _ObservationqtdeEstimadaValueEnumMap[
      reader.readStringOrNull(offsets[11])];
  object.responsavelId = reader.readString(offsets[12]);
  object.supabaseId = reader.readString(offsets[13]);
  object.trapId = reader.readString(offsets[14]);
  return object;
}

P _observationDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_ObservationacaoTomadaValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (_ObservationcondicoesIscaValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 3:
      return (reader.readDateTime(offset)) as P;
    case 4:
      return (reader.readDateTime(offset)) as P;
    case 5:
      return (_ObservationfaseDetectadaValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readBool(offset)) as P;
    case 9:
      return (reader.readBool(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (_ObservationqtdeEstimadaValueEnumMap[
          reader.readStringOrNull(offset)]) as P;
    case 12:
      return (reader.readString(offset)) as P;
    case 13:
      return (reader.readString(offset)) as P;
    case 14:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _ObservationacaoTomadaEnumValueMap = {
  r'limpeza': r'limpeza',
  r'reposicaoAgua': r'reposicaoAgua',
  r'substituicao': r'substituicao',
  r'semAcao': r'semAcao',
};
const _ObservationacaoTomadaValueEnumMap = {
  r'limpeza': AcaoTomada.limpeza,
  r'reposicaoAgua': AcaoTomada.reposicaoAgua,
  r'substituicao': AcaoTomada.substituicao,
  r'semAcao': AcaoTomada.semAcao,
};
const _ObservationcondicoesIscaEnumValueMap = {
  r'integra': r'integra',
  r'suja': r'suja',
  r'comFolhas': r'comFolhas',
  r'tombada': r'tombada',
  r'semAgua': r'semAgua',
};
const _ObservationcondicoesIscaValueEnumMap = {
  r'integra': CondicoesIsca.integra,
  r'suja': CondicoesIsca.suja,
  r'comFolhas': CondicoesIsca.comFolhas,
  r'tombada': CondicoesIsca.tombada,
  r'semAgua': CondicoesIsca.semAgua,
};
const _ObservationfaseDetectadaEnumValueMap = {
  r'ovos': r'ovos',
  r'larvas': r'larvas',
  r'pupas': r'pupas',
};
const _ObservationfaseDetectadaValueEnumMap = {
  r'ovos': FaseDetectada.ovos,
  r'larvas': FaseDetectada.larvas,
  r'pupas': FaseDetectada.pupas,
};
const _ObservationqtdeEstimadaEnumValueMap = {
  r'zero': r'zero',
  r'baixa': r'baixa',
  r'media': r'media',
  r'alta': r'alta',
};
const _ObservationqtdeEstimadaValueEnumMap = {
  r'zero': QuantidadeEstimada.zero,
  r'baixa': QuantidadeEstimada.baixa,
  r'media': QuantidadeEstimada.media,
  r'alta': QuantidadeEstimada.alta,
};

Id _observationGetId(Observation object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _observationGetLinks(Observation object) {
  return [];
}

void _observationAttach(
    IsarCollection<dynamic> col, Id id, Observation object) {
  object.id = id;
}

extension ObservationQueryWhereSort
    on QueryBuilder<Observation, Observation, QWhere> {
  QueryBuilder<Observation, Observation, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ObservationQueryWhere
    on QueryBuilder<Observation, Observation, QWhereClause> {
  QueryBuilder<Observation, Observation, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterWhereClause> idNotEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Observation, Observation, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Observation, Observation, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Observation, Observation, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension ObservationQueryFilter
    on QueryBuilder<Observation, Observation, QFilterCondition> {
  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'acaoTomada',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'acaoTomada',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaEqualTo(
    AcaoTomada? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acaoTomada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaGreaterThan(
    AcaoTomada? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'acaoTomada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaLessThan(
    AcaoTomada? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'acaoTomada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaBetween(
    AcaoTomada? lower,
    AcaoTomada? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'acaoTomada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'acaoTomada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'acaoTomada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'acaoTomada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'acaoTomada',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'acaoTomada',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      acaoTomadaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'acaoTomada',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      aguaPresenteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'aguaPresente',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      aguaPresenteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'aguaPresente',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      aguaPresenteEqualTo(bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'aguaPresente',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'condicoesIsca',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'condicoesIsca',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaEqualTo(
    CondicoesIsca? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'condicoesIsca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaGreaterThan(
    CondicoesIsca? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'condicoesIsca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaLessThan(
    CondicoesIsca? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'condicoesIsca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaBetween(
    CondicoesIsca? lower,
    CondicoesIsca? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'condicoesIsca',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'condicoesIsca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'condicoesIsca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'condicoesIsca',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'condicoesIsca',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'condicoesIsca',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      condicoesIscaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'condicoesIsca',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      createdAtEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      createdAtGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      createdAtLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      createdAtBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      dataObservacaoEqualTo(DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataObservacao',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      dataObservacaoGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataObservacao',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      dataObservacaoLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataObservacao',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      dataObservacaoBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataObservacao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'faseDetectada',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'faseDetectada',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaEqualTo(
    FaseDetectada? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'faseDetectada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaGreaterThan(
    FaseDetectada? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'faseDetectada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaLessThan(
    FaseDetectada? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'faseDetectada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaBetween(
    FaseDetectada? lower,
    FaseDetectada? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'faseDetectada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'faseDetectada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'faseDetectada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'faseDetectada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'faseDetectada',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'faseDetectada',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      faseDetectadaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'faseDetectada',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fotoLocalPath',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fotoLocalPath',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotoLocalPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fotoLocalPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fotoLocalPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fotoLocalPath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fotoLocalPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fotoLocalPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fotoLocalPath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fotoLocalPath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotoLocalPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoLocalPathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fotoLocalPath',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fotoUrl',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fotoUrl',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> fotoUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fotoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> fotoUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fotoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> fotoUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fotoUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fotoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> fotoUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fotoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> fotoUrlContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fotoUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> fotoUrlMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fotoUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fotoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      fotoUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fotoUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      materialBiologicoEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'materialBiologico',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      needsSyncEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'needsSync',
        value: value,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'observacoes',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'observacoes',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacoes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'observacoes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'observacoes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'observacoes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'observacoes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'observacoes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'observacoes',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'observacoes',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'observacoes',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      observacoesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'observacoes',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'qtdeEstimada',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'qtdeEstimada',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaEqualTo(
    QuantidadeEstimada? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qtdeEstimada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaGreaterThan(
    QuantidadeEstimada? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qtdeEstimada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaLessThan(
    QuantidadeEstimada? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qtdeEstimada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaBetween(
    QuantidadeEstimada? lower,
    QuantidadeEstimada? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qtdeEstimada',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'qtdeEstimada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'qtdeEstimada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qtdeEstimada',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qtdeEstimada',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qtdeEstimada',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      qtdeEstimadaIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qtdeEstimada',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsavelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'responsavelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'responsavelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'responsavelId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'responsavelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'responsavelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'responsavelId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'responsavelId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsavelId',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      responsavelIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'responsavelId',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'supabaseId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'supabaseId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      supabaseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supabaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> trapIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trapId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      trapIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trapId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> trapIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trapId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> trapIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trapId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      trapIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'trapId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> trapIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'trapId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> trapIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'trapId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition> trapIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'trapId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      trapIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trapId',
        value: '',
      ));
    });
  }

  QueryBuilder<Observation, Observation, QAfterFilterCondition>
      trapIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'trapId',
        value: '',
      ));
    });
  }
}

extension ObservationQueryObject
    on QueryBuilder<Observation, Observation, QFilterCondition> {}

extension ObservationQueryLinks
    on QueryBuilder<Observation, Observation, QFilterCondition> {}

extension ObservationQuerySortBy
    on QueryBuilder<Observation, Observation, QSortBy> {
  QueryBuilder<Observation, Observation, QAfterSortBy> sortByAcaoTomada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acaoTomada', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByAcaoTomadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acaoTomada', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByAguaPresente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aguaPresente', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByAguaPresenteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aguaPresente', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByCondicoesIsca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condicoesIsca', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByCondicoesIscaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condicoesIsca', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByDataObservacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataObservacao', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByDataObservacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataObservacao', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByFaseDetectada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'faseDetectada', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByFaseDetectadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'faseDetectada', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByFotoLocalPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoLocalPath', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByFotoLocalPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoLocalPath', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByFotoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoUrl', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByFotoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoUrl', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByMaterialBiologico() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialBiologico', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByMaterialBiologicoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialBiologico', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByNeedsSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsSync', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByNeedsSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsSync', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByObservacoes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacoes', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByObservacoesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacoes', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByQtdeEstimada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtdeEstimada', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByQtdeEstimadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtdeEstimada', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByResponsavelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsavelId', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      sortByResponsavelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsavelId', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortBySupabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortBySupabaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByTrapId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trapId', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> sortByTrapIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trapId', Sort.desc);
    });
  }
}

extension ObservationQuerySortThenBy
    on QueryBuilder<Observation, Observation, QSortThenBy> {
  QueryBuilder<Observation, Observation, QAfterSortBy> thenByAcaoTomada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acaoTomada', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByAcaoTomadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'acaoTomada', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByAguaPresente() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aguaPresente', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByAguaPresenteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'aguaPresente', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByCondicoesIsca() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condicoesIsca', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByCondicoesIscaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'condicoesIsca', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByDataObservacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataObservacao', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByDataObservacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataObservacao', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByFaseDetectada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'faseDetectada', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByFaseDetectadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'faseDetectada', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByFotoLocalPath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoLocalPath', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByFotoLocalPathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoLocalPath', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByFotoUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoUrl', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByFotoUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fotoUrl', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByMaterialBiologico() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialBiologico', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByMaterialBiologicoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'materialBiologico', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByNeedsSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsSync', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByNeedsSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsSync', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByObservacoes() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacoes', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByObservacoesDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'observacoes', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByQtdeEstimada() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtdeEstimada', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByQtdeEstimadaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qtdeEstimada', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByResponsavelId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsavelId', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy>
      thenByResponsavelIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsavelId', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenBySupabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenBySupabaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.desc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByTrapId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trapId', Sort.asc);
    });
  }

  QueryBuilder<Observation, Observation, QAfterSortBy> thenByTrapIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trapId', Sort.desc);
    });
  }
}

extension ObservationQueryWhereDistinct
    on QueryBuilder<Observation, Observation, QDistinct> {
  QueryBuilder<Observation, Observation, QDistinct> distinctByAcaoTomada(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'acaoTomada', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByAguaPresente() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'aguaPresente');
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByCondicoesIsca(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'condicoesIsca',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByDataObservacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataObservacao');
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByFaseDetectada(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'faseDetectada',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByFotoLocalPath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fotoLocalPath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByFotoUrl(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fotoUrl', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct>
      distinctByMaterialBiologico() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'materialBiologico');
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByNeedsSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'needsSync');
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByObservacoes(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'observacoes', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByQtdeEstimada(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qtdeEstimada', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByResponsavelId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responsavelId',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctBySupabaseId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supabaseId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Observation, Observation, QDistinct> distinctByTrapId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trapId', caseSensitive: caseSensitive);
    });
  }
}

extension ObservationQueryProperty
    on QueryBuilder<Observation, Observation, QQueryProperty> {
  QueryBuilder<Observation, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Observation, AcaoTomada?, QQueryOperations>
      acaoTomadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'acaoTomada');
    });
  }

  QueryBuilder<Observation, bool?, QQueryOperations> aguaPresenteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'aguaPresente');
    });
  }

  QueryBuilder<Observation, CondicoesIsca?, QQueryOperations>
      condicoesIscaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'condicoesIsca');
    });
  }

  QueryBuilder<Observation, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Observation, DateTime, QQueryOperations>
      dataObservacaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataObservacao');
    });
  }

  QueryBuilder<Observation, FaseDetectada?, QQueryOperations>
      faseDetectadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'faseDetectada');
    });
  }

  QueryBuilder<Observation, String?, QQueryOperations> fotoLocalPathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fotoLocalPath');
    });
  }

  QueryBuilder<Observation, String?, QQueryOperations> fotoUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fotoUrl');
    });
  }

  QueryBuilder<Observation, bool, QQueryOperations>
      materialBiologicoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'materialBiologico');
    });
  }

  QueryBuilder<Observation, bool, QQueryOperations> needsSyncProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'needsSync');
    });
  }

  QueryBuilder<Observation, String?, QQueryOperations> observacoesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'observacoes');
    });
  }

  QueryBuilder<Observation, QuantidadeEstimada?, QQueryOperations>
      qtdeEstimadaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qtdeEstimada');
    });
  }

  QueryBuilder<Observation, String, QQueryOperations> responsavelIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responsavelId');
    });
  }

  QueryBuilder<Observation, String, QQueryOperations> supabaseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supabaseId');
    });
  }

  QueryBuilder<Observation, String, QQueryOperations> trapIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trapId');
    });
  }
}

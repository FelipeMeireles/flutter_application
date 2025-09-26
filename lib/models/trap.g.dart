// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trap.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetTrapCollection on Isar {
  IsarCollection<Trap> get traps => this.collection();
}

const TrapSchema = CollectionSchema(
  name: r'Trap',
  id: 6087924715599744796,
  properties: {
    r'apelidoPosto': PropertySchema(
      id: 0,
      name: r'apelidoPosto',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 1,
      name: r'createdAt',
      type: IsarType.dateTime,
    ),
    r'dataInstalacao': PropertySchema(
      id: 2,
      name: r'dataInstalacao',
      type: IsarType.dateTime,
    ),
    r'descricaoLocalizacao': PropertySchema(
      id: 3,
      name: r'descricaoLocalizacao',
      type: IsarType.string,
    ),
    r'latitude': PropertySchema(
      id: 4,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 5,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'needsSync': PropertySchema(
      id: 6,
      name: r'needsSync',
      type: IsarType.bool,
    ),
    r'qrPayload': PropertySchema(
      id: 7,
      name: r'qrPayload',
      type: IsarType.string,
    ),
    r'responsavelInstalacao': PropertySchema(
      id: 8,
      name: r'responsavelInstalacao',
      type: IsarType.string,
    ),
    r'status': PropertySchema(
      id: 9,
      name: r'status',
      type: IsarType.string,
      enumMap: _TrapstatusEnumValueMap,
    ),
    r'supabaseId': PropertySchema(
      id: 10,
      name: r'supabaseId',
      type: IsarType.string,
    ),
    r'trapId': PropertySchema(
      id: 11,
      name: r'trapId',
      type: IsarType.string,
    )
  },
  estimateSize: _trapEstimateSize,
  serialize: _trapSerialize,
  deserialize: _trapDeserialize,
  deserializeProp: _trapDeserializeProp,
  idName: r'id',
  indexes: {
    r'trapId': IndexSchema(
      id: 5011232199690310500,
      name: r'trapId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'trapId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _trapGetId,
  getLinks: _trapGetLinks,
  attach: _trapAttach,
  version: '3.1.0+1',
);

int _trapEstimateSize(
  Trap object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.apelidoPosto.length * 3;
  {
    final value = object.descricaoLocalizacao;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.qrPayload.length * 3;
  {
    final value = object.responsavelInstalacao;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  bytesCount += 3 + object.status.name.length * 3;
  bytesCount += 3 + object.supabaseId.length * 3;
  bytesCount += 3 + object.trapId.length * 3;
  return bytesCount;
}

void _trapSerialize(
  Trap object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apelidoPosto);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeDateTime(offsets[2], object.dataInstalacao);
  writer.writeString(offsets[3], object.descricaoLocalizacao);
  writer.writeDouble(offsets[4], object.latitude);
  writer.writeDouble(offsets[5], object.longitude);
  writer.writeBool(offsets[6], object.needsSync);
  writer.writeString(offsets[7], object.qrPayload);
  writer.writeString(offsets[8], object.responsavelInstalacao);
  writer.writeString(offsets[9], object.status.name);
  writer.writeString(offsets[10], object.supabaseId);
  writer.writeString(offsets[11], object.trapId);
}

Trap _trapDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Trap();
  object.apelidoPosto = reader.readString(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.dataInstalacao = reader.readDateTime(offsets[2]);
  object.descricaoLocalizacao = reader.readStringOrNull(offsets[3]);
  object.id = id;
  object.latitude = reader.readDoubleOrNull(offsets[4]);
  object.longitude = reader.readDoubleOrNull(offsets[5]);
  object.needsSync = reader.readBool(offsets[6]);
  object.qrPayload = reader.readString(offsets[7]);
  object.responsavelInstalacao = reader.readStringOrNull(offsets[8]);
  object.status =
      _TrapstatusValueEnumMap[reader.readStringOrNull(offsets[9])] ??
          TrapStatus.ativa;
  object.supabaseId = reader.readString(offsets[10]);
  object.trapId = reader.readString(offsets[11]);
  return object;
}

P _trapDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readDateTime(offset)) as P;
    case 2:
      return (reader.readDateTime(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readBool(offset)) as P;
    case 7:
      return (reader.readString(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    case 9:
      return (_TrapstatusValueEnumMap[reader.readStringOrNull(offset)] ??
          TrapStatus.ativa) as P;
    case 10:
      return (reader.readString(offset)) as P;
    case 11:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _TrapstatusEnumValueMap = {
  r'ativa': r'ativa',
  r'inativa': r'inativa',
  r'removida': r'removida',
};
const _TrapstatusValueEnumMap = {
  r'ativa': TrapStatus.ativa,
  r'inativa': TrapStatus.inativa,
  r'removida': TrapStatus.removida,
};

Id _trapGetId(Trap object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _trapGetLinks(Trap object) {
  return [];
}

void _trapAttach(IsarCollection<dynamic> col, Id id, Trap object) {
  object.id = id;
}

extension TrapByIndex on IsarCollection<Trap> {
  Future<Trap?> getByTrapId(String trapId) {
    return getByIndex(r'trapId', [trapId]);
  }

  Trap? getByTrapIdSync(String trapId) {
    return getByIndexSync(r'trapId', [trapId]);
  }

  Future<bool> deleteByTrapId(String trapId) {
    return deleteByIndex(r'trapId', [trapId]);
  }

  bool deleteByTrapIdSync(String trapId) {
    return deleteByIndexSync(r'trapId', [trapId]);
  }

  Future<List<Trap?>> getAllByTrapId(List<String> trapIdValues) {
    final values = trapIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'trapId', values);
  }

  List<Trap?> getAllByTrapIdSync(List<String> trapIdValues) {
    final values = trapIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'trapId', values);
  }

  Future<int> deleteAllByTrapId(List<String> trapIdValues) {
    final values = trapIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'trapId', values);
  }

  int deleteAllByTrapIdSync(List<String> trapIdValues) {
    final values = trapIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'trapId', values);
  }

  Future<Id> putByTrapId(Trap object) {
    return putByIndex(r'trapId', object);
  }

  Id putByTrapIdSync(Trap object, {bool saveLinks = true}) {
    return putByIndexSync(r'trapId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByTrapId(List<Trap> objects) {
    return putAllByIndex(r'trapId', objects);
  }

  List<Id> putAllByTrapIdSync(List<Trap> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'trapId', objects, saveLinks: saveLinks);
  }
}

extension TrapQueryWhereSort on QueryBuilder<Trap, Trap, QWhere> {
  QueryBuilder<Trap, Trap, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension TrapQueryWhere on QueryBuilder<Trap, Trap, QWhereClause> {
  QueryBuilder<Trap, Trap, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Trap, Trap, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Trap, Trap, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Trap, Trap, QAfterWhereClause> idBetween(
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

  QueryBuilder<Trap, Trap, QAfterWhereClause> trapIdEqualTo(String trapId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'trapId',
        value: [trapId],
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterWhereClause> trapIdNotEqualTo(String trapId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'trapId',
              lower: [],
              upper: [trapId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'trapId',
              lower: [trapId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'trapId',
              lower: [trapId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'trapId',
              lower: [],
              upper: [trapId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension TrapQueryFilter on QueryBuilder<Trap, Trap, QFilterCondition> {
  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apelidoPosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'apelidoPosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'apelidoPosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'apelidoPosto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'apelidoPosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'apelidoPosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'apelidoPosto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'apelidoPosto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apelidoPosto',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> apelidoPostoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'apelidoPosto',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> dataInstalacaoEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dataInstalacao',
        value: value,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> dataInstalacaoGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dataInstalacao',
        value: value,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> dataInstalacaoLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dataInstalacao',
        value: value,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> dataInstalacaoBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dataInstalacao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> descricaoLocalizacaoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descricaoLocalizacao',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      descricaoLocalizacaoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descricaoLocalizacao',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> descricaoLocalizacaoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descricaoLocalizacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      descricaoLocalizacaoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'descricaoLocalizacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> descricaoLocalizacaoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'descricaoLocalizacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> descricaoLocalizacaoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'descricaoLocalizacao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      descricaoLocalizacaoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'descricaoLocalizacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> descricaoLocalizacaoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'descricaoLocalizacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> descricaoLocalizacaoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descricaoLocalizacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> descricaoLocalizacaoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descricaoLocalizacao',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      descricaoLocalizacaoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descricaoLocalizacao',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      descricaoLocalizacaoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descricaoLocalizacao',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> latitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> latitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'latitude',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> latitudeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> latitudeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> latitudeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'latitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> latitudeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'latitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> longitudeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> longitudeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'longitude',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> longitudeEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> longitudeGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> longitudeLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'longitude',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> longitudeBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'longitude',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> needsSyncEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'needsSync',
        value: value,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qrPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'qrPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'qrPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'qrPayload',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'qrPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'qrPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'qrPayload',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'qrPayload',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'qrPayload',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> qrPayloadIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'qrPayload',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      responsavelInstalacaoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'responsavelInstalacao',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      responsavelInstalacaoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'responsavelInstalacao',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> responsavelInstalacaoEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsavelInstalacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      responsavelInstalacaoGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'responsavelInstalacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> responsavelInstalacaoLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'responsavelInstalacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> responsavelInstalacaoBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'responsavelInstalacao',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      responsavelInstalacaoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'responsavelInstalacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> responsavelInstalacaoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'responsavelInstalacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> responsavelInstalacaoContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'responsavelInstalacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> responsavelInstalacaoMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'responsavelInstalacao',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      responsavelInstalacaoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'responsavelInstalacao',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition>
      responsavelInstalacaoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'responsavelInstalacao',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusEqualTo(
    TrapStatus value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusGreaterThan(
    TrapStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusLessThan(
    TrapStatus value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusBetween(
    TrapStatus lower,
    TrapStatus upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'status',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'status',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'status',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> statusIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'status',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdEqualTo(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdGreaterThan(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdLessThan(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdBetween(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdStartsWith(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdEndsWith(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'supabaseId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'supabaseId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'supabaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> supabaseIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'supabaseId',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdEqualTo(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdGreaterThan(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdLessThan(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdBetween(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdStartsWith(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdEndsWith(
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

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'trapId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'trapId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trapId',
        value: '',
      ));
    });
  }

  QueryBuilder<Trap, Trap, QAfterFilterCondition> trapIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'trapId',
        value: '',
      ));
    });
  }
}

extension TrapQueryObject on QueryBuilder<Trap, Trap, QFilterCondition> {}

extension TrapQueryLinks on QueryBuilder<Trap, Trap, QFilterCondition> {}

extension TrapQuerySortBy on QueryBuilder<Trap, Trap, QSortBy> {
  QueryBuilder<Trap, Trap, QAfterSortBy> sortByApelidoPosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apelidoPosto', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByApelidoPostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apelidoPosto', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByDataInstalacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataInstalacao', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByDataInstalacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataInstalacao', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByDescricaoLocalizacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricaoLocalizacao', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByDescricaoLocalizacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricaoLocalizacao', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByNeedsSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsSync', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByNeedsSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsSync', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByQrPayload() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrPayload', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByQrPayloadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrPayload', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByResponsavelInstalacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsavelInstalacao', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByResponsavelInstalacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsavelInstalacao', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortBySupabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortBySupabaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByTrapId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trapId', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> sortByTrapIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trapId', Sort.desc);
    });
  }
}

extension TrapQuerySortThenBy on QueryBuilder<Trap, Trap, QSortThenBy> {
  QueryBuilder<Trap, Trap, QAfterSortBy> thenByApelidoPosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apelidoPosto', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByApelidoPostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apelidoPosto', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByDataInstalacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataInstalacao', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByDataInstalacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'dataInstalacao', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByDescricaoLocalizacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricaoLocalizacao', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByDescricaoLocalizacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricaoLocalizacao', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByLatitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'latitude', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByLongitudeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'longitude', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByNeedsSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsSync', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByNeedsSyncDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'needsSync', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByQrPayload() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrPayload', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByQrPayloadDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'qrPayload', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByResponsavelInstalacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsavelInstalacao', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByResponsavelInstalacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'responsavelInstalacao', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByStatus() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByStatusDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'status', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenBySupabaseId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenBySupabaseIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'supabaseId', Sort.desc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByTrapId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trapId', Sort.asc);
    });
  }

  QueryBuilder<Trap, Trap, QAfterSortBy> thenByTrapIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'trapId', Sort.desc);
    });
  }
}

extension TrapQueryWhereDistinct on QueryBuilder<Trap, Trap, QDistinct> {
  QueryBuilder<Trap, Trap, QDistinct> distinctByApelidoPosto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apelidoPosto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByDataInstalacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'dataInstalacao');
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByDescricaoLocalizacao(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descricaoLocalizacao',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByLatitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'latitude');
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByLongitude() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'longitude');
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByNeedsSync() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'needsSync');
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByQrPayload(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'qrPayload', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByResponsavelInstalacao(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'responsavelInstalacao',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByStatus(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'status', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctBySupabaseId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'supabaseId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Trap, Trap, QDistinct> distinctByTrapId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trapId', caseSensitive: caseSensitive);
    });
  }
}

extension TrapQueryProperty on QueryBuilder<Trap, Trap, QQueryProperty> {
  QueryBuilder<Trap, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Trap, String, QQueryOperations> apelidoPostoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apelidoPosto');
    });
  }

  QueryBuilder<Trap, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Trap, DateTime, QQueryOperations> dataInstalacaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'dataInstalacao');
    });
  }

  QueryBuilder<Trap, String?, QQueryOperations> descricaoLocalizacaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descricaoLocalizacao');
    });
  }

  QueryBuilder<Trap, double?, QQueryOperations> latitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'latitude');
    });
  }

  QueryBuilder<Trap, double?, QQueryOperations> longitudeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'longitude');
    });
  }

  QueryBuilder<Trap, bool, QQueryOperations> needsSyncProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'needsSync');
    });
  }

  QueryBuilder<Trap, String, QQueryOperations> qrPayloadProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'qrPayload');
    });
  }

  QueryBuilder<Trap, String?, QQueryOperations>
      responsavelInstalacaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'responsavelInstalacao');
    });
  }

  QueryBuilder<Trap, TrapStatus, QQueryOperations> statusProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'status');
    });
  }

  QueryBuilder<Trap, String, QQueryOperations> supabaseIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'supabaseId');
    });
  }

  QueryBuilder<Trap, String, QQueryOperations> trapIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trapId');
    });
  }
}

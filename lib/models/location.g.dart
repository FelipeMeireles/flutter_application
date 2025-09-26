// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetLocationCollection on Isar {
  IsarCollection<Location> get locations => this.collection();
}

const LocationSchema = CollectionSchema(
  name: r'Location',
  id: -8833727672639471650,
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
    r'descricaoLocalizacao': PropertySchema(
      id: 2,
      name: r'descricaoLocalizacao',
      type: IsarType.string,
    )
  },
  estimateSize: _locationEstimateSize,
  serialize: _locationSerialize,
  deserialize: _locationDeserialize,
  deserializeProp: _locationDeserializeProp,
  idName: r'id',
  indexes: {
    r'apelidoPosto': IndexSchema(
      id: -8336351832072198530,
      name: r'apelidoPosto',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'apelidoPosto',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _locationGetId,
  getLinks: _locationGetLinks,
  attach: _locationAttach,
  version: '3.1.0+1',
);

int _locationEstimateSize(
  Location object,
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
  return bytesCount;
}

void _locationSerialize(
  Location object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.apelidoPosto);
  writer.writeDateTime(offsets[1], object.createdAt);
  writer.writeString(offsets[2], object.descricaoLocalizacao);
}

Location _locationDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Location();
  object.apelidoPosto = reader.readString(offsets[0]);
  object.createdAt = reader.readDateTime(offsets[1]);
  object.descricaoLocalizacao = reader.readStringOrNull(offsets[2]);
  object.id = id;
  return object;
}

P _locationDeserializeProp<P>(
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
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _locationGetId(Location object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _locationGetLinks(Location object) {
  return [];
}

void _locationAttach(IsarCollection<dynamic> col, Id id, Location object) {
  object.id = id;
}

extension LocationByIndex on IsarCollection<Location> {
  Future<Location?> getByApelidoPosto(String apelidoPosto) {
    return getByIndex(r'apelidoPosto', [apelidoPosto]);
  }

  Location? getByApelidoPostoSync(String apelidoPosto) {
    return getByIndexSync(r'apelidoPosto', [apelidoPosto]);
  }

  Future<bool> deleteByApelidoPosto(String apelidoPosto) {
    return deleteByIndex(r'apelidoPosto', [apelidoPosto]);
  }

  bool deleteByApelidoPostoSync(String apelidoPosto) {
    return deleteByIndexSync(r'apelidoPosto', [apelidoPosto]);
  }

  Future<List<Location?>> getAllByApelidoPosto(
      List<String> apelidoPostoValues) {
    final values = apelidoPostoValues.map((e) => [e]).toList();
    return getAllByIndex(r'apelidoPosto', values);
  }

  List<Location?> getAllByApelidoPostoSync(List<String> apelidoPostoValues) {
    final values = apelidoPostoValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'apelidoPosto', values);
  }

  Future<int> deleteAllByApelidoPosto(List<String> apelidoPostoValues) {
    final values = apelidoPostoValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'apelidoPosto', values);
  }

  int deleteAllByApelidoPostoSync(List<String> apelidoPostoValues) {
    final values = apelidoPostoValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'apelidoPosto', values);
  }

  Future<Id> putByApelidoPosto(Location object) {
    return putByIndex(r'apelidoPosto', object);
  }

  Id putByApelidoPostoSync(Location object, {bool saveLinks = true}) {
    return putByIndexSync(r'apelidoPosto', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByApelidoPosto(List<Location> objects) {
    return putAllByIndex(r'apelidoPosto', objects);
  }

  List<Id> putAllByApelidoPostoSync(List<Location> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'apelidoPosto', objects, saveLinks: saveLinks);
  }
}

extension LocationQueryWhereSort on QueryBuilder<Location, Location, QWhere> {
  QueryBuilder<Location, Location, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension LocationQueryWhere on QueryBuilder<Location, Location, QWhereClause> {
  QueryBuilder<Location, Location, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Location, Location, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Location, Location, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Location, Location, QAfterWhereClause> idBetween(
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

  QueryBuilder<Location, Location, QAfterWhereClause> apelidoPostoEqualTo(
      String apelidoPosto) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'apelidoPosto',
        value: [apelidoPosto],
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterWhereClause> apelidoPostoNotEqualTo(
      String apelidoPosto) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'apelidoPosto',
              lower: [],
              upper: [apelidoPosto],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'apelidoPosto',
              lower: [apelidoPosto],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'apelidoPosto',
              lower: [apelidoPosto],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'apelidoPosto',
              lower: [],
              upper: [apelidoPosto],
              includeUpper: false,
            ));
      }
    });
  }
}

extension LocationQueryFilter
    on QueryBuilder<Location, Location, QFilterCondition> {
  QueryBuilder<Location, Location, QAfterFilterCondition> apelidoPostoEqualTo(
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
      apelidoPostoGreaterThan(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> apelidoPostoLessThan(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> apelidoPostoBetween(
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
      apelidoPostoStartsWith(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> apelidoPostoEndsWith(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> apelidoPostoContains(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> apelidoPostoMatches(
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
      apelidoPostoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'apelidoPosto',
        value: '',
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition>
      apelidoPostoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'apelidoPosto',
        value: '',
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition> createdAtEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition> createdAtGreaterThan(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> createdAtLessThan(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> createdAtBetween(
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'descricaoLocalizacao',
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'descricaoLocalizacao',
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoEqualTo(
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoLessThan(
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoBetween(
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoEndsWith(
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

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'descricaoLocalizacao',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'descricaoLocalizacao',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'descricaoLocalizacao',
        value: '',
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition>
      descricaoLocalizacaoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'descricaoLocalizacao',
        value: '',
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Location, Location, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Location, Location, QAfterFilterCondition> idBetween(
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
}

extension LocationQueryObject
    on QueryBuilder<Location, Location, QFilterCondition> {}

extension LocationQueryLinks
    on QueryBuilder<Location, Location, QFilterCondition> {}

extension LocationQuerySortBy on QueryBuilder<Location, Location, QSortBy> {
  QueryBuilder<Location, Location, QAfterSortBy> sortByApelidoPosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apelidoPosto', Sort.asc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> sortByApelidoPostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apelidoPosto', Sort.desc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> sortByDescricaoLocalizacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricaoLocalizacao', Sort.asc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy>
      sortByDescricaoLocalizacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricaoLocalizacao', Sort.desc);
    });
  }
}

extension LocationQuerySortThenBy
    on QueryBuilder<Location, Location, QSortThenBy> {
  QueryBuilder<Location, Location, QAfterSortBy> thenByApelidoPosto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apelidoPosto', Sort.asc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> thenByApelidoPostoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'apelidoPosto', Sort.desc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> thenByDescricaoLocalizacao() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricaoLocalizacao', Sort.asc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy>
      thenByDescricaoLocalizacaoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'descricaoLocalizacao', Sort.desc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Location, Location, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension LocationQueryWhereDistinct
    on QueryBuilder<Location, Location, QDistinct> {
  QueryBuilder<Location, Location, QDistinct> distinctByApelidoPosto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'apelidoPosto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Location, Location, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<Location, Location, QDistinct> distinctByDescricaoLocalizacao(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'descricaoLocalizacao',
          caseSensitive: caseSensitive);
    });
  }
}

extension LocationQueryProperty
    on QueryBuilder<Location, Location, QQueryProperty> {
  QueryBuilder<Location, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Location, String, QQueryOperations> apelidoPostoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'apelidoPosto');
    });
  }

  QueryBuilder<Location, DateTime, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<Location, String?, QQueryOperations>
      descricaoLocalizacaoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'descricaoLocalizacao');
    });
  }
}

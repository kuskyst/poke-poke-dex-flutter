// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mark.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMarkCollection on Isar {
  IsarCollection<Mark> get marks => this.collection();
}

const MarkSchema = CollectionSchema(
  name: r'Mark',
  id: 1,
  properties: {
    r'heart': PropertySchema(
      id: 0,
      name: r'heart',
      type: IsarType.bool,
    ),
    r'inId': PropertySchema(
      id: 1,
      name: r'inId',
      type: IsarType.string,
    ),
    r'star': PropertySchema(
      id: 2,
      name: r'star',
      type: IsarType.bool,
    )
  },
  estimateSize: _markEstimateSize,
  serialize: _markSerialize,
  deserialize: _markDeserialize,
  deserializeProp: _markDeserializeProp,
  idName: r'id',
  indexes: {
    r'inId': IndexSchema(
      id: 2,
      name: r'inId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'inId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _markGetId,
  getLinks: _markGetLinks,
  attach: _markAttach,
  version: '3.1.0+1',
);

int _markEstimateSize(
  Mark object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.inId.length * 3;
  return bytesCount;
}

void _markSerialize(
  Mark object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeBool(offsets[0], object.heart);
  writer.writeString(offsets[1], object.inId);
  writer.writeBool(offsets[2], object.star);
}

Mark _markDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Mark(
    heart: reader.readBoolOrNull(offsets[0]) ?? false,
    inId: reader.readString(offsets[1]),
    star: reader.readBoolOrNull(offsets[2]) ?? false,
  );
  object.id = id;
  return object;
}

P _markDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readBoolOrNull(offset) ?? false) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _markGetId(Mark object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _markGetLinks(Mark object) {
  return [];
}

void _markAttach(IsarCollection<dynamic> col, Id id, Mark object) {
  object.id = id;
}

extension MarkByIndex on IsarCollection<Mark> {
  Future<Mark?> getByInId(String inId) {
    return getByIndex(r'inId', [inId]);
  }

  Mark? getByInIdSync(String inId) {
    return getByIndexSync(r'inId', [inId]);
  }

  Future<bool> deleteByInId(String inId) {
    return deleteByIndex(r'inId', [inId]);
  }

  bool deleteByInIdSync(String inId) {
    return deleteByIndexSync(r'inId', [inId]);
  }

  Future<List<Mark?>> getAllByInId(List<String> inIdValues) {
    final values = inIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'inId', values);
  }

  List<Mark?> getAllByInIdSync(List<String> inIdValues) {
    final values = inIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'inId', values);
  }

  Future<int> deleteAllByInId(List<String> inIdValues) {
    final values = inIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'inId', values);
  }

  int deleteAllByInIdSync(List<String> inIdValues) {
    final values = inIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'inId', values);
  }

  Future<Id> putByInId(Mark object) {
    return putByIndex(r'inId', object);
  }

  Id putByInIdSync(Mark object, {bool saveLinks = true}) {
    return putByIndexSync(r'inId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByInId(List<Mark> objects) {
    return putAllByIndex(r'inId', objects);
  }

  List<Id> putAllByInIdSync(List<Mark> objects, {bool saveLinks = true}) {
    return putAllByIndexSync(r'inId', objects, saveLinks: saveLinks);
  }
}

extension MarkQueryWhereSort on QueryBuilder<Mark, Mark, QWhere> {
  QueryBuilder<Mark, Mark, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MarkQueryWhere on QueryBuilder<Mark, Mark, QWhereClause> {
  QueryBuilder<Mark, Mark, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Mark, Mark, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Mark, Mark, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Mark, Mark, QAfterWhereClause> idBetween(
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

  QueryBuilder<Mark, Mark, QAfterWhereClause> inIdEqualTo(String inId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'inId',
        value: [inId],
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterWhereClause> inIdNotEqualTo(String inId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'inId',
              lower: [],
              upper: [inId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'inId',
              lower: [inId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'inId',
              lower: [inId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'inId',
              lower: [],
              upper: [inId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension MarkQueryFilter on QueryBuilder<Mark, Mark, QFilterCondition> {
  QueryBuilder<Mark, Mark, QAfterFilterCondition> heartEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'heart',
        value: value,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Mark, Mark, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Mark, Mark, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'inId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'inId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'inId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'inId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'inId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'inId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'inId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'inId',
        value: '',
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> inIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'inId',
        value: '',
      ));
    });
  }

  QueryBuilder<Mark, Mark, QAfterFilterCondition> starEqualTo(bool value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'star',
        value: value,
      ));
    });
  }
}

extension MarkQueryObject on QueryBuilder<Mark, Mark, QFilterCondition> {}

extension MarkQueryLinks on QueryBuilder<Mark, Mark, QFilterCondition> {}

extension MarkQuerySortBy on QueryBuilder<Mark, Mark, QSortBy> {
  QueryBuilder<Mark, Mark, QAfterSortBy> sortByHeart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heart', Sort.asc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> sortByHeartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heart', Sort.desc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> sortByInId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inId', Sort.asc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> sortByInIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inId', Sort.desc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> sortByStar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'star', Sort.asc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> sortByStarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'star', Sort.desc);
    });
  }
}

extension MarkQuerySortThenBy on QueryBuilder<Mark, Mark, QSortThenBy> {
  QueryBuilder<Mark, Mark, QAfterSortBy> thenByHeart() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heart', Sort.asc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> thenByHeartDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'heart', Sort.desc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> thenByInId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inId', Sort.asc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> thenByInIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'inId', Sort.desc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> thenByStar() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'star', Sort.asc);
    });
  }

  QueryBuilder<Mark, Mark, QAfterSortBy> thenByStarDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'star', Sort.desc);
    });
  }
}

extension MarkQueryWhereDistinct on QueryBuilder<Mark, Mark, QDistinct> {
  QueryBuilder<Mark, Mark, QDistinct> distinctByHeart() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'heart');
    });
  }

  QueryBuilder<Mark, Mark, QDistinct> distinctByInId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'inId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Mark, Mark, QDistinct> distinctByStar() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'star');
    });
  }
}

extension MarkQueryProperty on QueryBuilder<Mark, Mark, QQueryProperty> {
  QueryBuilder<Mark, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Mark, bool, QQueryOperations> heartProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'heart');
    });
  }

  QueryBuilder<Mark, String, QQueryOperations> inIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'inId');
    });
  }

  QueryBuilder<Mark, bool, QQueryOperations> starProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'star');
    });
  }
}

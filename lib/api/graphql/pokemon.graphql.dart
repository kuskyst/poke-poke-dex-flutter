import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Pokemons {
  factory Variables$Query$Pokemons({required int first}) =>
      Variables$Query$Pokemons._({
        r'first': first,
      });

  Variables$Query$Pokemons._(this._$data);

  factory Variables$Query$Pokemons.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$first = data['first'];
    result$data['first'] = (l$first as int);
    return Variables$Query$Pokemons._(result$data);
  }

  Map<String, dynamic> _$data;

  int get first => (_$data['first'] as int);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$first = first;
    result$data['first'] = l$first;
    return result$data;
  }

  CopyWith$Variables$Query$Pokemons<Variables$Query$Pokemons> get copyWith =>
      CopyWith$Variables$Query$Pokemons(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Pokemons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$first = first;
    final lOther$first = other.first;
    if (l$first != lOther$first) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$first = first;
    return Object.hashAll([l$first]);
  }
}

abstract class CopyWith$Variables$Query$Pokemons<TRes> {
  factory CopyWith$Variables$Query$Pokemons(
    Variables$Query$Pokemons instance,
    TRes Function(Variables$Query$Pokemons) then,
  ) = _CopyWithImpl$Variables$Query$Pokemons;

  factory CopyWith$Variables$Query$Pokemons.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Pokemons;

  TRes call({int? first});
}

class _CopyWithImpl$Variables$Query$Pokemons<TRes>
    implements CopyWith$Variables$Query$Pokemons<TRes> {
  _CopyWithImpl$Variables$Query$Pokemons(
    this._instance,
    this._then,
  );

  final Variables$Query$Pokemons _instance;

  final TRes Function(Variables$Query$Pokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? first = _undefined}) => _then(Variables$Query$Pokemons._({
        ..._instance._$data,
        if (first != _undefined && first != null) 'first': (first as int),
      }));
}

class _CopyWithStubImpl$Variables$Query$Pokemons<TRes>
    implements CopyWith$Variables$Query$Pokemons<TRes> {
  _CopyWithStubImpl$Variables$Query$Pokemons(this._res);

  TRes _res;

  call({int? first}) => _res;
}

class Query$Pokemons {
  Query$Pokemons({
    this.pokemons,
    this.$__typename = 'Query',
  });

  factory Query$Pokemons.fromJson(Map<String, dynamic> json) {
    final l$pokemons = json['pokemons'];
    final l$$__typename = json['__typename'];
    return Query$Pokemons(
      pokemons: (l$pokemons as List<dynamic>?)
          ?.map((e) => e == null
              ? null
              : Query$Pokemons$pokemons.fromJson((e as Map<String, dynamic>)))
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final List<Query$Pokemons$pokemons?>? pokemons;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemons = pokemons;
    _resultData['pokemons'] = l$pokemons?.map((e) => e?.toJson()).toList();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemons = pokemons;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemons == null ? null : Object.hashAll(l$pokemons.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Pokemons) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemons = pokemons;
    final lOther$pokemons = other.pokemons;
    if (l$pokemons != null && lOther$pokemons != null) {
      if (l$pokemons.length != lOther$pokemons.length) {
        return false;
      }
      for (int i = 0; i < l$pokemons.length; i++) {
        final l$pokemons$entry = l$pokemons[i];
        final lOther$pokemons$entry = lOther$pokemons[i];
        if (l$pokemons$entry != lOther$pokemons$entry) {
          return false;
        }
      }
    } else if (l$pokemons != lOther$pokemons) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Pokemons on Query$Pokemons {
  CopyWith$Query$Pokemons<Query$Pokemons> get copyWith =>
      CopyWith$Query$Pokemons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Pokemons<TRes> {
  factory CopyWith$Query$Pokemons(
    Query$Pokemons instance,
    TRes Function(Query$Pokemons) then,
  ) = _CopyWithImpl$Query$Pokemons;

  factory CopyWith$Query$Pokemons.stub(TRes res) =
      _CopyWithStubImpl$Query$Pokemons;

  TRes call({
    List<Query$Pokemons$pokemons?>? pokemons,
    String? $__typename,
  });
  TRes pokemons(
      Iterable<Query$Pokemons$pokemons?>? Function(
              Iterable<
                  CopyWith$Query$Pokemons$pokemons<Query$Pokemons$pokemons>?>?)
          _fn);
}

class _CopyWithImpl$Query$Pokemons<TRes>
    implements CopyWith$Query$Pokemons<TRes> {
  _CopyWithImpl$Query$Pokemons(
    this._instance,
    this._then,
  );

  final Query$Pokemons _instance;

  final TRes Function(Query$Pokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemons = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Pokemons(
        pokemons: pokemons == _undefined
            ? _instance.pokemons
            : (pokemons as List<Query$Pokemons$pokemons?>?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  TRes pokemons(
          Iterable<Query$Pokemons$pokemons?>? Function(
                  Iterable<
                      CopyWith$Query$Pokemons$pokemons<
                          Query$Pokemons$pokemons>?>?)
              _fn) =>
      call(
          pokemons: _fn(_instance.pokemons?.map((e) => e == null
              ? null
              : CopyWith$Query$Pokemons$pokemons(
                  e,
                  (i) => i,
                )))?.toList());
}

class _CopyWithStubImpl$Query$Pokemons<TRes>
    implements CopyWith$Query$Pokemons<TRes> {
  _CopyWithStubImpl$Query$Pokemons(this._res);

  TRes _res;

  call({
    List<Query$Pokemons$pokemons?>? pokemons,
    String? $__typename,
  }) =>
      _res;

  pokemons(_fn) => _res;
}

const documentNodeQueryPokemons = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Pokemons'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'first')),
        type: NamedTypeNode(
          name: NameNode(value: 'Int'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemons'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'first'),
            value: VariableNode(name: NameNode(value: 'first')),
          )
        ],
        directives: [],
        selectionSet: SelectionSetNode(selections: [
          FieldNode(
            name: NameNode(value: 'id'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'number'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'name'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: 'image'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ]),
      ),
      FieldNode(
        name: NameNode(value: '__typename'),
        alias: null,
        arguments: [],
        directives: [],
        selectionSet: null,
      ),
    ]),
  ),
]);
Query$Pokemons _parserFn$Query$Pokemons(Map<String, dynamic> data) =>
    Query$Pokemons.fromJson(data);
typedef OnQueryComplete$Query$Pokemons = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Pokemons?,
);

class Options$Query$Pokemons extends graphql.QueryOptions<Query$Pokemons> {
  Options$Query$Pokemons({
    String? operationName,
    required Variables$Query$Pokemons variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Pokemons? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Pokemons? onComplete,
    graphql.OnQueryError? onError,
  })  : onCompleteWithParsed = onComplete,
        super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          pollInterval: pollInterval,
          context: context,
          onComplete: onComplete == null
              ? null
              : (data) => onComplete(
                    data,
                    data == null ? null : _parserFn$Query$Pokemons(data),
                  ),
          onError: onError,
          document: documentNodeQueryPokemons,
          parserFn: _parserFn$Query$Pokemons,
        );

  final OnQueryComplete$Query$Pokemons? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Pokemons
    extends graphql.WatchQueryOptions<Query$Pokemons> {
  WatchOptions$Query$Pokemons({
    String? operationName,
    required Variables$Query$Pokemons variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Pokemons? typedOptimisticResult,
    graphql.Context? context,
    Duration? pollInterval,
    bool? eagerlyFetchResults,
    bool carryForwardDataOnException = true,
    bool fetchResults = false,
  }) : super(
          variables: variables.toJson(),
          operationName: operationName,
          fetchPolicy: fetchPolicy,
          errorPolicy: errorPolicy,
          cacheRereadPolicy: cacheRereadPolicy,
          optimisticResult: optimisticResult ?? typedOptimisticResult?.toJson(),
          context: context,
          document: documentNodeQueryPokemons,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Pokemons,
        );
}

class FetchMoreOptions$Query$Pokemons extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Pokemons({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Pokemons variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPokemons,
        );
}

extension ClientExtension$Query$Pokemons on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Pokemons>> query$Pokemons(
          Options$Query$Pokemons options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Pokemons> watchQuery$Pokemons(
          WatchOptions$Query$Pokemons options) =>
      this.watchQuery(options);
  void writeQuery$Pokemons({
    required Query$Pokemons data,
    required Variables$Query$Pokemons variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPokemons),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Pokemons? readQuery$Pokemons({
    required Variables$Query$Pokemons variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPokemons),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Pokemons.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Pokemons> useQuery$Pokemons(
        Options$Query$Pokemons options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Pokemons> useWatchQuery$Pokemons(
        WatchOptions$Query$Pokemons options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Pokemons$Widget extends graphql_flutter.Query<Query$Pokemons> {
  Query$Pokemons$Widget({
    widgets.Key? key,
    required Options$Query$Pokemons options,
    required graphql_flutter.QueryBuilder<Query$Pokemons> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Pokemons$pokemons {
  Query$Pokemons$pokemons({
    required this.id,
    this.number,
    this.name,
    this.image,
    this.$__typename = 'Pokemon',
  });

  factory Query$Pokemons$pokemons.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$Pokemons$pokemons(
      id: (l$id as String),
      number: (l$number as String?),
      name: (l$name as String?),
      image: (l$image as String?),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? number;

  final String? name;

  final String? image;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$id = id;
    _resultData['id'] = l$id;
    final l$number = number;
    _resultData['number'] = l$number;
    final l$name = name;
    _resultData['name'] = l$name;
    final l$image = image;
    _resultData['image'] = l$image;
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$number = number;
    final l$name = name;
    final l$image = image;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$number,
      l$name,
      l$image,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Pokemons$pokemons) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$number = number;
    final lOther$number = other.number;
    if (l$number != lOther$number) {
      return false;
    }
    final l$name = name;
    final lOther$name = other.name;
    if (l$name != lOther$name) {
      return false;
    }
    final l$image = image;
    final lOther$image = other.image;
    if (l$image != lOther$image) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Pokemons$pokemons on Query$Pokemons$pokemons {
  CopyWith$Query$Pokemons$pokemons<Query$Pokemons$pokemons> get copyWith =>
      CopyWith$Query$Pokemons$pokemons(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Pokemons$pokemons<TRes> {
  factory CopyWith$Query$Pokemons$pokemons(
    Query$Pokemons$pokemons instance,
    TRes Function(Query$Pokemons$pokemons) then,
  ) = _CopyWithImpl$Query$Pokemons$pokemons;

  factory CopyWith$Query$Pokemons$pokemons.stub(TRes res) =
      _CopyWithStubImpl$Query$Pokemons$pokemons;

  TRes call({
    String? id,
    String? number,
    String? name,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Pokemons$pokemons<TRes>
    implements CopyWith$Query$Pokemons$pokemons<TRes> {
  _CopyWithImpl$Query$Pokemons$pokemons(
    this._instance,
    this._then,
  );

  final Query$Pokemons$pokemons _instance;

  final TRes Function(Query$Pokemons$pokemons) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? number = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Pokemons$pokemons(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined ? _instance.number : (number as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Pokemons$pokemons<TRes>
    implements CopyWith$Query$Pokemons$pokemons<TRes> {
  _CopyWithStubImpl$Query$Pokemons$pokemons(this._res);

  TRes _res;

  call({
    String? id,
    String? number,
    String? name,
    String? image,
    String? $__typename,
  }) =>
      _res;
}

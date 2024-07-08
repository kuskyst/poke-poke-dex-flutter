import 'dart:async';
import 'package:flutter/widgets.dart' as widgets;
import 'package:gql/ast.dart';
import 'package:graphql/client.dart' as graphql;
import 'package:graphql_flutter/graphql_flutter.dart' as graphql_flutter;

class Variables$Query$Pokemon {
  factory Variables$Query$Pokemon({required String id}) =>
      Variables$Query$Pokemon._({
        r'id': id,
      });

  Variables$Query$Pokemon._(this._$data);

  factory Variables$Query$Pokemon.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$id = data['id'];
    result$data['id'] = (l$id as String);
    return Variables$Query$Pokemon._(result$data);
  }

  Map<String, dynamic> _$data;

  String get id => (_$data['id'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$id = id;
    result$data['id'] = l$id;
    return result$data;
  }

  CopyWith$Variables$Query$Pokemon<Variables$Query$Pokemon> get copyWith =>
      CopyWith$Variables$Query$Pokemon(
        this,
        (i) => i,
      );

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Variables$Query$Pokemon) ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$id = id;
    return Object.hashAll([l$id]);
  }
}

abstract class CopyWith$Variables$Query$Pokemon<TRes> {
  factory CopyWith$Variables$Query$Pokemon(
    Variables$Query$Pokemon instance,
    TRes Function(Variables$Query$Pokemon) then,
  ) = _CopyWithImpl$Variables$Query$Pokemon;

  factory CopyWith$Variables$Query$Pokemon.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Pokemon;

  TRes call({String? id});
}

class _CopyWithImpl$Variables$Query$Pokemon<TRes>
    implements CopyWith$Variables$Query$Pokemon<TRes> {
  _CopyWithImpl$Variables$Query$Pokemon(
    this._instance,
    this._then,
  );

  final Variables$Query$Pokemon _instance;

  final TRes Function(Variables$Query$Pokemon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({Object? id = _undefined}) => _then(Variables$Query$Pokemon._({
        ..._instance._$data,
        if (id != _undefined && id != null) 'id': (id as String),
      }));
}

class _CopyWithStubImpl$Variables$Query$Pokemon<TRes>
    implements CopyWith$Variables$Query$Pokemon<TRes> {
  _CopyWithStubImpl$Variables$Query$Pokemon(this._res);

  TRes _res;

  call({String? id}) => _res;
}

class Query$Pokemon {
  Query$Pokemon({
    this.pokemon,
    this.$__typename = 'Query',
  });

  factory Query$Pokemon.fromJson(Map<String, dynamic> json) {
    final l$pokemon = json['pokemon'];
    final l$$__typename = json['__typename'];
    return Query$Pokemon(
      pokemon: l$pokemon == null
          ? null
          : Query$Pokemon$pokemon.fromJson((l$pokemon as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Pokemon$pokemon? pokemon;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final _resultData = <String, dynamic>{};
    final l$pokemon = pokemon;
    _resultData['pokemon'] = l$pokemon?.toJson();
    final l$$__typename = $__typename;
    _resultData['__typename'] = l$$__typename;
    return _resultData;
  }

  @override
  int get hashCode {
    final l$pokemon = pokemon;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pokemon,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (!(other is Query$Pokemon) || runtimeType != other.runtimeType) {
      return false;
    }
    final l$pokemon = pokemon;
    final lOther$pokemon = other.pokemon;
    if (l$pokemon != lOther$pokemon) {
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

extension UtilityExtension$Query$Pokemon on Query$Pokemon {
  CopyWith$Query$Pokemon<Query$Pokemon> get copyWith => CopyWith$Query$Pokemon(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Pokemon<TRes> {
  factory CopyWith$Query$Pokemon(
    Query$Pokemon instance,
    TRes Function(Query$Pokemon) then,
  ) = _CopyWithImpl$Query$Pokemon;

  factory CopyWith$Query$Pokemon.stub(TRes res) =
      _CopyWithStubImpl$Query$Pokemon;

  TRes call({
    Query$Pokemon$pokemon? pokemon,
    String? $__typename,
  });
  CopyWith$Query$Pokemon$pokemon<TRes> get pokemon;
}

class _CopyWithImpl$Query$Pokemon<TRes>
    implements CopyWith$Query$Pokemon<TRes> {
  _CopyWithImpl$Query$Pokemon(
    this._instance,
    this._then,
  );

  final Query$Pokemon _instance;

  final TRes Function(Query$Pokemon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? pokemon = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Pokemon(
        pokemon: pokemon == _undefined
            ? _instance.pokemon
            : (pokemon as Query$Pokemon$pokemon?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));

  CopyWith$Query$Pokemon$pokemon<TRes> get pokemon {
    final local$pokemon = _instance.pokemon;
    return local$pokemon == null
        ? CopyWith$Query$Pokemon$pokemon.stub(_then(_instance))
        : CopyWith$Query$Pokemon$pokemon(
            local$pokemon, (e) => call(pokemon: e));
  }
}

class _CopyWithStubImpl$Query$Pokemon<TRes>
    implements CopyWith$Query$Pokemon<TRes> {
  _CopyWithStubImpl$Query$Pokemon(this._res);

  TRes _res;

  call({
    Query$Pokemon$pokemon? pokemon,
    String? $__typename,
  }) =>
      _res;

  CopyWith$Query$Pokemon$pokemon<TRes> get pokemon =>
      CopyWith$Query$Pokemon$pokemon.stub(_res);
}

const documentNodeQueryPokemon = DocumentNode(definitions: [
  OperationDefinitionNode(
    type: OperationType.query,
    name: NameNode(value: 'Pokemon'),
    variableDefinitions: [
      VariableDefinitionNode(
        variable: VariableNode(name: NameNode(value: 'id')),
        type: NamedTypeNode(
          name: NameNode(value: 'String'),
          isNonNull: true,
        ),
        defaultValue: DefaultValueNode(value: null),
        directives: [],
      )
    ],
    directives: [],
    selectionSet: SelectionSetNode(selections: [
      FieldNode(
        name: NameNode(value: 'pokemon'),
        alias: null,
        arguments: [
          ArgumentNode(
            name: NameNode(value: 'id'),
            value: VariableNode(name: NameNode(value: 'id')),
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
Query$Pokemon _parserFn$Query$Pokemon(Map<String, dynamic> data) =>
    Query$Pokemon.fromJson(data);
typedef OnQueryComplete$Query$Pokemon = FutureOr<void> Function(
  Map<String, dynamic>?,
  Query$Pokemon?,
);

class Options$Query$Pokemon extends graphql.QueryOptions<Query$Pokemon> {
  Options$Query$Pokemon({
    String? operationName,
    required Variables$Query$Pokemon variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Pokemon? typedOptimisticResult,
    Duration? pollInterval,
    graphql.Context? context,
    OnQueryComplete$Query$Pokemon? onComplete,
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
                    data == null ? null : _parserFn$Query$Pokemon(data),
                  ),
          onError: onError,
          document: documentNodeQueryPokemon,
          parserFn: _parserFn$Query$Pokemon,
        );

  final OnQueryComplete$Query$Pokemon? onCompleteWithParsed;

  @override
  List<Object?> get properties => [
        ...super.onComplete == null
            ? super.properties
            : super.properties.where((property) => property != onComplete),
        onCompleteWithParsed,
      ];
}

class WatchOptions$Query$Pokemon
    extends graphql.WatchQueryOptions<Query$Pokemon> {
  WatchOptions$Query$Pokemon({
    String? operationName,
    required Variables$Query$Pokemon variables,
    graphql.FetchPolicy? fetchPolicy,
    graphql.ErrorPolicy? errorPolicy,
    graphql.CacheRereadPolicy? cacheRereadPolicy,
    Object? optimisticResult,
    Query$Pokemon? typedOptimisticResult,
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
          document: documentNodeQueryPokemon,
          pollInterval: pollInterval,
          eagerlyFetchResults: eagerlyFetchResults,
          carryForwardDataOnException: carryForwardDataOnException,
          fetchResults: fetchResults,
          parserFn: _parserFn$Query$Pokemon,
        );
}

class FetchMoreOptions$Query$Pokemon extends graphql.FetchMoreOptions {
  FetchMoreOptions$Query$Pokemon({
    required graphql.UpdateQuery updateQuery,
    required Variables$Query$Pokemon variables,
  }) : super(
          updateQuery: updateQuery,
          variables: variables.toJson(),
          document: documentNodeQueryPokemon,
        );
}

extension ClientExtension$Query$Pokemon on graphql.GraphQLClient {
  Future<graphql.QueryResult<Query$Pokemon>> query$Pokemon(
          Options$Query$Pokemon options) async =>
      await this.query(options);
  graphql.ObservableQuery<Query$Pokemon> watchQuery$Pokemon(
          WatchOptions$Query$Pokemon options) =>
      this.watchQuery(options);
  void writeQuery$Pokemon({
    required Query$Pokemon data,
    required Variables$Query$Pokemon variables,
    bool broadcast = true,
  }) =>
      this.writeQuery(
        graphql.Request(
          operation: graphql.Operation(document: documentNodeQueryPokemon),
          variables: variables.toJson(),
        ),
        data: data.toJson(),
        broadcast: broadcast,
      );
  Query$Pokemon? readQuery$Pokemon({
    required Variables$Query$Pokemon variables,
    bool optimistic = true,
  }) {
    final result = this.readQuery(
      graphql.Request(
        operation: graphql.Operation(document: documentNodeQueryPokemon),
        variables: variables.toJson(),
      ),
      optimistic: optimistic,
    );
    return result == null ? null : Query$Pokemon.fromJson(result);
  }
}

graphql_flutter.QueryHookResult<Query$Pokemon> useQuery$Pokemon(
        Options$Query$Pokemon options) =>
    graphql_flutter.useQuery(options);
graphql.ObservableQuery<Query$Pokemon> useWatchQuery$Pokemon(
        WatchOptions$Query$Pokemon options) =>
    graphql_flutter.useWatchQuery(options);

class Query$Pokemon$Widget extends graphql_flutter.Query<Query$Pokemon> {
  Query$Pokemon$Widget({
    widgets.Key? key,
    required Options$Query$Pokemon options,
    required graphql_flutter.QueryBuilder<Query$Pokemon> builder,
  }) : super(
          key: key,
          options: options,
          builder: builder,
        );
}

class Query$Pokemon$pokemon {
  Query$Pokemon$pokemon({
    required this.id,
    this.number,
    this.name,
    this.image,
    this.$__typename = 'Pokemon',
  });

  factory Query$Pokemon$pokemon.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$number = json['number'];
    final l$name = json['name'];
    final l$image = json['image'];
    final l$$__typename = json['__typename'];
    return Query$Pokemon$pokemon(
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
    if (!(other is Query$Pokemon$pokemon) || runtimeType != other.runtimeType) {
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

extension UtilityExtension$Query$Pokemon$pokemon on Query$Pokemon$pokemon {
  CopyWith$Query$Pokemon$pokemon<Query$Pokemon$pokemon> get copyWith =>
      CopyWith$Query$Pokemon$pokemon(
        this,
        (i) => i,
      );
}

abstract class CopyWith$Query$Pokemon$pokemon<TRes> {
  factory CopyWith$Query$Pokemon$pokemon(
    Query$Pokemon$pokemon instance,
    TRes Function(Query$Pokemon$pokemon) then,
  ) = _CopyWithImpl$Query$Pokemon$pokemon;

  factory CopyWith$Query$Pokemon$pokemon.stub(TRes res) =
      _CopyWithStubImpl$Query$Pokemon$pokemon;

  TRes call({
    String? id,
    String? number,
    String? name,
    String? image,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Pokemon$pokemon<TRes>
    implements CopyWith$Query$Pokemon$pokemon<TRes> {
  _CopyWithImpl$Query$Pokemon$pokemon(
    this._instance,
    this._then,
  );

  final Query$Pokemon$pokemon _instance;

  final TRes Function(Query$Pokemon$pokemon) _then;

  static const _undefined = <dynamic, dynamic>{};

  TRes call({
    Object? id = _undefined,
    Object? number = _undefined,
    Object? name = _undefined,
    Object? image = _undefined,
    Object? $__typename = _undefined,
  }) =>
      _then(Query$Pokemon$pokemon(
        id: id == _undefined || id == null ? _instance.id : (id as String),
        number: number == _undefined ? _instance.number : (number as String?),
        name: name == _undefined ? _instance.name : (name as String?),
        image: image == _undefined ? _instance.image : (image as String?),
        $__typename: $__typename == _undefined || $__typename == null
            ? _instance.$__typename
            : ($__typename as String),
      ));
}

class _CopyWithStubImpl$Query$Pokemon$pokemon<TRes>
    implements CopyWith$Query$Pokemon$pokemon<TRes> {
  _CopyWithStubImpl$Query$Pokemon$pokemon(this._res);

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

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

final client = ValueNotifier<GraphQLClient>(
  GraphQLClient(
    link: HttpLink('https://graphql-pokemon2.vercel.app'),
    cache: GraphQLCache(),
  )
);
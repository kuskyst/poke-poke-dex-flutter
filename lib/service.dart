import 'package:graphql/client.dart';

class GitHubService {

  final GraphQLClient _client;

  GitHubService() : _client = _initClient();

  static GraphQLClient _initClient() {
    return GraphQLClient(
      cache: GraphQLCache(),
      link: HttpLink('https://graphql-pokemon2.vercel.app'),
    );
  }

  Future<List<dynamic>> getUserRepositories(String username) async {
    final query = '''
      query {
        user(login: "$username") {
          repositories(first: 10) {
            nodes {
              name
              description
            }
          }
        }
      }
    ''';

    final result = await _client.query(QueryOptions(document: gql(query)));

    if (result.hasException) {
      print(result.exception.toString());
      throw Exception('Failed to fetch data');
    }

    return result.data?['user']['repositories']['nodes'];
  }
}

import 'package:flutter/material.dart';
import 'service.dart';

class UserRepositoriesViewModel extends ChangeNotifier {
  final GitHubService _gitHubService = GitHubService();
  List<dynamic> _repositories = [];

  List<dynamic> get repositories => _repositories;

  Future<void> fetchRepositories(String username) async {
    try {
      _repositories = await _gitHubService.getUserRepositories(username);
      notifyListeners();
    } catch (e) {
      print('Error fetching repositories: $e');
    }
  }
}

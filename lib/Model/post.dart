import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PostData with ChangeNotifier {
  List<dynamic> _posts = [];
  bool _isLoading = false;
  String? _errorMessage;

  List<dynamic> get posts => _posts;

  bool get isLoading => _isLoading;

  String? get errorMessage => _errorMessage;

  Future<void> fetchPosts() async {
    _isLoading = true;
    notifyListeners();

    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      if (response.statusCode == 200) {
        _posts = json.decode(response.body);
        _errorMessage = null;
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}


import 'dart:convert';

import 'package:flutter_my_app/models/book_model.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  static final ApiServices _instance = ApiServices._internal();

  factory ApiServices() => _instance;
  
  ApiServices._internal();

  List<Book> listOfBooks = [];

  Future<List<Book>> getBooks() async {
    final url = Uri.https("ios-training-backend.herokuapp.com", "/api/v1/books/");
    final response = await http.get(url);
    final booksResponse = booksFromJson(response.body);
    return booksResponse;
  }

    Future<Book> getBookDetail(int index) async {
    final url = Uri.https("ios-training-backend.herokuapp.com", "/api/v1/books/$index");
    final response = await http.get(url);
    final bookResponse = Book.fromJson(json.decode(response.body) as Map<String, dynamic>); 
    return bookResponse;
  }
}

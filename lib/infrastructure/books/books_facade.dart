import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_my_app/domain/book/book_model.dart';
import 'package:flutter_my_app/domain/book/books_failure.dart';
import 'package:flutter_my_app/domain/book/i_books_facade.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IBooksFacade)
class BooksFacade implements IBooksFacade {
  @override
  Future<Either<BooksFailure, List<Book>>> getBooks() async {
    try {
      final url = Uri.https("ios-training-backend.herokuapp.com", "/api/v1/books/");
      final response = await http.get(url);
      final booksResponse = booksFromJson(response.body);
      return right(booksResponse);
    } on Exception catch (_) {
      return left(const BooksFailure.serverError());
    }
  }

  @override
  Future<Either<BooksFailure, Book>> getBookDetail({required int index}) async {
    try {
      final url = Uri.https(
        "ios-training-backend.herokuapp.com",
        "/api/v1/books/$index",
      );
      final response = await http.get(url);
      final bookResponse =
          Book.fromJson(json.decode(response.body) as Map<String, dynamic>);
      return right(bookResponse);
    } on Exception catch (_) {
      return left(const BooksFailure.serverError());
    }
  }
}

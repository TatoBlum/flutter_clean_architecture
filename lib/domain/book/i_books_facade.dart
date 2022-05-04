import 'package:dartz/dartz.dart';
import 'package:flutter_my_app/domain/book/book_model.dart';
import 'package:flutter_my_app/domain/book/books_failure.dart';

abstract class IBooksFacade {
  Future<Either<BooksFailure, List<Book>>> getBooks();

  Future<Either<BooksFailure, Book>> getBookDetail({required int index});
}

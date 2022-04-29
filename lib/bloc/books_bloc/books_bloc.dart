import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_app/models/book_model.dart';
import 'package:flutter_my_app/services/api_services.dart';

part 'books_event.dart';
part 'books_state.dart';

class BooksBloc extends Bloc<BooksEvent, BooksState> {
  final ApiServices? repository;

  BooksBloc({this.repository}) : super(LoadingBooks()) {
    on<FetchBooks>(_fetchBooks);
    on<FetchBookDetail>(_fetchBookDetail);
  }

  Future<void> _fetchBooks(FetchBooks event, Emitter<BooksState> emit) async {
    try {
      if (state.books == null) emit(LoadingBooks());
      final List<Book> books = await repository!.getBooks();
      if (state.books == null) {
        emit(LoadedBooks(books: [...books]));
      } else {
        emit(LoadedBooks(books: [...?state.books]));
      }
    } on Exception catch (e) {
      emit(BooksErrorMessage(error: e.toString()));
    }
  }

  Future<void> _fetchBookDetail(
      FetchBookDetail event, Emitter<BooksState> emit,) async {
    Book? _book;
    try {
      emit(LoadingBooks(books: [...?state.books]));
      _book = await repository?.getBookDetail(event.book.id!);
      emit(
        BooksWithBookDetail(
          books: [...?state.books],
          book: state.book.copyWith(id: _book?.id, image: _book?.image),
        ),
      );
    } on Exception catch (e) {
      emit(BooksErrorMessage(error: e.toString()));
    }
  }
}

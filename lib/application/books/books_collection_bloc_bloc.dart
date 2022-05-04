import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_my_app/domain/book/book_model.dart';
import 'package:flutter_my_app/domain/book/books_failure.dart';
import 'package:flutter_my_app/domain/book/i_books_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'books_collection_bloc_event.dart';
part 'books_collection_bloc_state.dart';
part 'books_collection_bloc_bloc.freezed.dart';

@injectable
class BooksCollectionBlocBloc
    extends Bloc<BooksCollectionBlocEvent, BooksCollectionBlocState> {
  final IBooksFacade _bookFacade;

  BooksCollectionBlocBloc(this._bookFacade)
      : super(BooksCollectionBlocState.initial()) {
    on<FetchBooks>(_fetchBooks);
    on<FetchBookDetail>(_fetchBookDetail);
  }

  Future<void> _fetchBooks(
    FetchBooks event,
    Emitter<BooksCollectionBlocState> emit,
  ) async {
    try {
      if (state.booksFailureOrSuccessOption == none()) {
        emit(state.copyWith(isLoading: true));
      }

      final books = await _bookFacade.getBooks();
      if (state.booksFailureOrSuccessOption == none()) {
        emit(
          state.copyWith(
            booksFailureOrSuccessOption: some(books),
            isLoading: false,
          ),
        );
      } else {
        emit(
          state.copyWith(
            booksFailureOrSuccessOption: state.booksFailureOrSuccessOption,
            isLoading: false,
          ),
        );
      }
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString(), isLoading: false));
    }
  }

  Future<void> _fetchBookDetail(
    FetchBookDetail event,
    Emitter<BooksCollectionBlocState> emit,
  ) async {
    Either<BooksFailure, Book>? _bookOrFailures;

    try {
      emit(
        state.copyWith(
          booksFailureOrSuccessOption: state.booksFailureOrSuccessOption,
          isLoading: true,
        ),
      );

      _bookOrFailures = await _bookFacade.getBookDetail(index: event.book!.id!);

      emit(
        state.copyWith(
          booksFailureOrSuccessOption: state.booksFailureOrSuccessOption,
          bookFailureOrSuccessOption:
              some(_bookOrFailures), // state.bookFailureOrSuccessOption,
          isLoading: false,
        ),
      );
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}

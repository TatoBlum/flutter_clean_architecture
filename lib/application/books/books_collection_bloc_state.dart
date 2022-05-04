part of 'books_collection_bloc_bloc.dart';

@freezed
class BooksCollectionBlocState with _$BooksCollectionBlocState {
  const factory BooksCollectionBlocState({
    required bool? isLoading,
    required String? error,
    required Option<Either<BooksFailure, List<Book>>> booksFailureOrSuccessOption,
        required Option<Either<BooksFailure, Book>> bookFailureOrSuccessOption,
  }) = _BooksCollectionBlocState;

  factory BooksCollectionBlocState.initial() => BooksCollectionBlocState(
        isLoading: true,
        error: "",
        booksFailureOrSuccessOption: none(),
        bookFailureOrSuccessOption: none(),
      );
}

part of 'books_collection_bloc_bloc.dart';

@freezed
class BooksCollectionBlocEvent with _$BooksCollectionBlocEvent {
  const factory BooksCollectionBlocEvent.fetchBooks() = FetchBooks;
  const factory BooksCollectionBlocEvent.fetchBookDetail(Book? book, BuildContext? context) = FetchBookDetail;
}

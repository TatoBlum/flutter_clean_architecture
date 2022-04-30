part of 'books_bloc.dart';

@immutable
abstract class BooksEvent {}

class FetchBooks extends BooksEvent{} 

class FetchBookDetail extends BooksEvent {
  final Book book;
  final BuildContext context;

  FetchBookDetail(
    this.book,
    this.context, 
  );
}

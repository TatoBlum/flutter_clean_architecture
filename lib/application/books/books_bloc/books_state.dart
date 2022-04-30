part of 'books_bloc.dart';

class BooksState {
  final List<Book>? books;
  final Book book;
  final String? error;

  BooksState({this.books, Book? book, this.error}) 
  : book = book ?? Book();

  BooksState copyWith({List<Book>? books, Book? book})=> BooksState(books: books ?? this.books, book: book ?? this.book);

  factory BooksState.initial() => BooksState();
}

class LoadingBooks extends BooksState {  

  LoadingBooks({List<Book>? books, Book? book}) : super(books: books, book: book);
}

class LoadedBooks extends BooksState {

  LoadedBooks({List<Book>? books}) : super(books: books);
}

class BooksWithBookDetail extends BooksState {

  BooksWithBookDetail({List<Book>? books, Book? book}): super(books: books, book: book);
}

class BooksErrorMessage extends BooksState {

  BooksErrorMessage({String? error}): super(error: error);
}

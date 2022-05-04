import 'package:freezed_annotation/freezed_annotation.dart';
part 'books_failure.freezed.dart';

@freezed
abstract class BooksFailure with _$BooksFailure {
  const factory BooksFailure.serverError() = ServerError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'books_collection_bloc_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksCollectionBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
    required TResult Function(Book? book, BuildContext? context)
        fetchBookDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(Book? book, BuildContext? context)? fetchBookDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(Book? book, BuildContext? context)? fetchBookDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBooks value) fetchBooks,
    required TResult Function(FetchBookDetail value) fetchBookDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchBooks value)? fetchBooks,
    TResult Function(FetchBookDetail value)? fetchBookDetail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBooks value)? fetchBooks,
    TResult Function(FetchBookDetail value)? fetchBookDetail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksCollectionBlocEventCopyWith<$Res> {
  factory $BooksCollectionBlocEventCopyWith(BooksCollectionBlocEvent value,
          $Res Function(BooksCollectionBlocEvent) then) =
      _$BooksCollectionBlocEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BooksCollectionBlocEventCopyWithImpl<$Res>
    implements $BooksCollectionBlocEventCopyWith<$Res> {
  _$BooksCollectionBlocEventCopyWithImpl(this._value, this._then);

  final BooksCollectionBlocEvent _value;
  // ignore: unused_field
  final $Res Function(BooksCollectionBlocEvent) _then;
}

/// @nodoc
abstract class $FetchBooksCopyWith<$Res> {
  factory $FetchBooksCopyWith(
          FetchBooks value, $Res Function(FetchBooks) then) =
      _$FetchBooksCopyWithImpl<$Res>;
}

/// @nodoc
class _$FetchBooksCopyWithImpl<$Res>
    extends _$BooksCollectionBlocEventCopyWithImpl<$Res>
    implements $FetchBooksCopyWith<$Res> {
  _$FetchBooksCopyWithImpl(FetchBooks _value, $Res Function(FetchBooks) _then)
      : super(_value, (v) => _then(v as FetchBooks));

  @override
  FetchBooks get _value => super._value as FetchBooks;
}

/// @nodoc

class _$FetchBooks implements FetchBooks {
  const _$FetchBooks();

  @override
  String toString() {
    return 'BooksCollectionBlocEvent.fetchBooks()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is FetchBooks);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
    required TResult Function(Book? book, BuildContext? context)
        fetchBookDetail,
  }) {
    return fetchBooks();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(Book? book, BuildContext? context)? fetchBookDetail,
  }) {
    return fetchBooks?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(Book? book, BuildContext? context)? fetchBookDetail,
    required TResult orElse(),
  }) {
    if (fetchBooks != null) {
      return fetchBooks();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBooks value) fetchBooks,
    required TResult Function(FetchBookDetail value) fetchBookDetail,
  }) {
    return fetchBooks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchBooks value)? fetchBooks,
    TResult Function(FetchBookDetail value)? fetchBookDetail,
  }) {
    return fetchBooks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBooks value)? fetchBooks,
    TResult Function(FetchBookDetail value)? fetchBookDetail,
    required TResult orElse(),
  }) {
    if (fetchBooks != null) {
      return fetchBooks(this);
    }
    return orElse();
  }
}

abstract class FetchBooks implements BooksCollectionBlocEvent {
  const factory FetchBooks() = _$FetchBooks;
}

/// @nodoc
abstract class $FetchBookDetailCopyWith<$Res> {
  factory $FetchBookDetailCopyWith(
          FetchBookDetail value, $Res Function(FetchBookDetail) then) =
      _$FetchBookDetailCopyWithImpl<$Res>;
  $Res call({Book? book, BuildContext? context});
}

/// @nodoc
class _$FetchBookDetailCopyWithImpl<$Res>
    extends _$BooksCollectionBlocEventCopyWithImpl<$Res>
    implements $FetchBookDetailCopyWith<$Res> {
  _$FetchBookDetailCopyWithImpl(
      FetchBookDetail _value, $Res Function(FetchBookDetail) _then)
      : super(_value, (v) => _then(v as FetchBookDetail));

  @override
  FetchBookDetail get _value => super._value as FetchBookDetail;

  @override
  $Res call({
    Object? book = freezed,
    Object? context = freezed,
  }) {
    return _then(FetchBookDetail(
      book == freezed
          ? _value.book
          : book // ignore: cast_nullable_to_non_nullable
              as Book?,
      context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext?,
    ));
  }
}

/// @nodoc

class _$FetchBookDetail implements FetchBookDetail {
  const _$FetchBookDetail(this.book, this.context);

  @override
  final Book? book;
  @override
  final BuildContext? context;

  @override
  String toString() {
    return 'BooksCollectionBlocEvent.fetchBookDetail(book: $book, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FetchBookDetail &&
            const DeepCollectionEquality().equals(other.book, book) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(book),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $FetchBookDetailCopyWith<FetchBookDetail> get copyWith =>
      _$FetchBookDetailCopyWithImpl<FetchBookDetail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetchBooks,
    required TResult Function(Book? book, BuildContext? context)
        fetchBookDetail,
  }) {
    return fetchBookDetail(book, context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(Book? book, BuildContext? context)? fetchBookDetail,
  }) {
    return fetchBookDetail?.call(book, context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetchBooks,
    TResult Function(Book? book, BuildContext? context)? fetchBookDetail,
    required TResult orElse(),
  }) {
    if (fetchBookDetail != null) {
      return fetchBookDetail(book, context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FetchBooks value) fetchBooks,
    required TResult Function(FetchBookDetail value) fetchBookDetail,
  }) {
    return fetchBookDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(FetchBooks value)? fetchBooks,
    TResult Function(FetchBookDetail value)? fetchBookDetail,
  }) {
    return fetchBookDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FetchBooks value)? fetchBooks,
    TResult Function(FetchBookDetail value)? fetchBookDetail,
    required TResult orElse(),
  }) {
    if (fetchBookDetail != null) {
      return fetchBookDetail(this);
    }
    return orElse();
  }
}

abstract class FetchBookDetail implements BooksCollectionBlocEvent {
  const factory FetchBookDetail(final Book? book, final BuildContext? context) =
      _$FetchBookDetail;

  Book? get book => throw _privateConstructorUsedError;
  BuildContext? get context => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FetchBookDetailCopyWith<FetchBookDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BooksCollectionBlocState {
  bool? get isLoading => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  Option<Either<BooksFailure, List<Book>>> get booksFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<Either<BooksFailure, Book>> get bookFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksCollectionBlocStateCopyWith<BooksCollectionBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksCollectionBlocStateCopyWith<$Res> {
  factory $BooksCollectionBlocStateCopyWith(BooksCollectionBlocState value,
          $Res Function(BooksCollectionBlocState) then) =
      _$BooksCollectionBlocStateCopyWithImpl<$Res>;
  $Res call(
      {bool? isLoading,
      String? error,
      Option<Either<BooksFailure, List<Book>>> booksFailureOrSuccessOption,
      Option<Either<BooksFailure, Book>> bookFailureOrSuccessOption});
}

/// @nodoc
class _$BooksCollectionBlocStateCopyWithImpl<$Res>
    implements $BooksCollectionBlocStateCopyWith<$Res> {
  _$BooksCollectionBlocStateCopyWithImpl(this._value, this._then);

  final BooksCollectionBlocState _value;
  // ignore: unused_field
  final $Res Function(BooksCollectionBlocState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? booksFailureOrSuccessOption = freezed,
    Object? bookFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      booksFailureOrSuccessOption: booksFailureOrSuccessOption == freezed
          ? _value.booksFailureOrSuccessOption
          : booksFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BooksFailure, List<Book>>>,
      bookFailureOrSuccessOption: bookFailureOrSuccessOption == freezed
          ? _value.bookFailureOrSuccessOption
          : bookFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BooksFailure, Book>>,
    ));
  }
}

/// @nodoc
abstract class _$BooksCollectionBlocStateCopyWith<$Res>
    implements $BooksCollectionBlocStateCopyWith<$Res> {
  factory _$BooksCollectionBlocStateCopyWith(_BooksCollectionBlocState value,
          $Res Function(_BooksCollectionBlocState) then) =
      __$BooksCollectionBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? isLoading,
      String? error,
      Option<Either<BooksFailure, List<Book>>> booksFailureOrSuccessOption,
      Option<Either<BooksFailure, Book>> bookFailureOrSuccessOption});
}

/// @nodoc
class __$BooksCollectionBlocStateCopyWithImpl<$Res>
    extends _$BooksCollectionBlocStateCopyWithImpl<$Res>
    implements _$BooksCollectionBlocStateCopyWith<$Res> {
  __$BooksCollectionBlocStateCopyWithImpl(_BooksCollectionBlocState _value,
      $Res Function(_BooksCollectionBlocState) _then)
      : super(_value, (v) => _then(v as _BooksCollectionBlocState));

  @override
  _BooksCollectionBlocState get _value =>
      super._value as _BooksCollectionBlocState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? error = freezed,
    Object? booksFailureOrSuccessOption = freezed,
    Object? bookFailureOrSuccessOption = freezed,
  }) {
    return _then(_BooksCollectionBlocState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool?,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      booksFailureOrSuccessOption: booksFailureOrSuccessOption == freezed
          ? _value.booksFailureOrSuccessOption
          : booksFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BooksFailure, List<Book>>>,
      bookFailureOrSuccessOption: bookFailureOrSuccessOption == freezed
          ? _value.bookFailureOrSuccessOption
          : bookFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<BooksFailure, Book>>,
    ));
  }
}

/// @nodoc

class _$_BooksCollectionBlocState implements _BooksCollectionBlocState {
  const _$_BooksCollectionBlocState(
      {required this.isLoading,
      required this.error,
      required this.booksFailureOrSuccessOption,
      required this.bookFailureOrSuccessOption});

  @override
  final bool? isLoading;
  @override
  final String? error;
  @override
  final Option<Either<BooksFailure, List<Book>>> booksFailureOrSuccessOption;
  @override
  final Option<Either<BooksFailure, Book>> bookFailureOrSuccessOption;

  @override
  String toString() {
    return 'BooksCollectionBlocState(isLoading: $isLoading, error: $error, booksFailureOrSuccessOption: $booksFailureOrSuccessOption, bookFailureOrSuccessOption: $bookFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BooksCollectionBlocState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.error, error) &&
            const DeepCollectionEquality().equals(
                other.booksFailureOrSuccessOption,
                booksFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.bookFailureOrSuccessOption, bookFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(error),
      const DeepCollectionEquality().hash(booksFailureOrSuccessOption),
      const DeepCollectionEquality().hash(bookFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$BooksCollectionBlocStateCopyWith<_BooksCollectionBlocState> get copyWith =>
      __$BooksCollectionBlocStateCopyWithImpl<_BooksCollectionBlocState>(
          this, _$identity);
}

abstract class _BooksCollectionBlocState implements BooksCollectionBlocState {
  const factory _BooksCollectionBlocState(
      {required final bool? isLoading,
      required final String? error,
      required final Option<Either<BooksFailure, List<Book>>>
          booksFailureOrSuccessOption,
      required final Option<Either<BooksFailure, Book>>
          bookFailureOrSuccessOption}) = _$_BooksCollectionBlocState;

  @override
  bool? get isLoading => throw _privateConstructorUsedError;
  @override
  String? get error => throw _privateConstructorUsedError;
  @override
  Option<Either<BooksFailure, List<Book>>> get booksFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<Either<BooksFailure, Book>> get bookFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BooksCollectionBlocStateCopyWith<_BooksCollectionBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

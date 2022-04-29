// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:flutter_my_app/domain/core/errors.dart';
import 'package:flutter_my_app/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold((l) => throw UnexpectedValueError(l), (r) => r);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}

@immutable
abstract class ValueObjects<T, Y> {
  const ValueObjects();

  Either<ValueFailure<T>, Y> get value;

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value(value: $value)';
}

import 'package:dartz/dartz.dart';

import 'package:flutter_my_app/domain/core/failures.dart';
import 'package:flutter_my_app/domain/core/value_objects.dart';
import 'package:flutter_my_app/domain/core/value_validators.dart';

class EmailAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Making ilegal states unrepresentable
  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  const EmailAddress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  //Making ilegal states unrepresentable
  factory Password(String input) {
    return Password._(
      validatePasswordAddress(input),
    );
  }

  const Password._(this.value);
}

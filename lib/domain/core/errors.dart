

import 'package:flutter_my_app/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Enconterred a ValueFailure at an un recoverable point. Terminating.:';
    return Error.safeToString('$explanation Failure was: $valueFailure');
  }
}

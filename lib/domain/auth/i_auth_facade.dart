import 'package:dartz/dartz.dart';
import 'package:flutter_my_app/domain/auth/auth_failure.dart';
import 'package:flutter_my_app/domain/auth/user.dart';
import 'package:flutter_my_app/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password,});

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password,});

  Future<Either<AuthFailure, Unit>> signInWithGoogle();

  Future<Option<User>> getSignedInUser();

  Future<void> signOut();
}

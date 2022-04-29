import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:flutter_my_app/domain/auth/auth_failure.dart';
import 'package:flutter_my_app/domain/auth/i_auth_facade.dart';
import 'package:flutter_my_app/domain/auth/value_objects.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordAddressString = password.getOrCrash();

    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: emailAddressString,
        password: passwordAddressString,
      );
      return right(unit); //void Unit from dartz
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  }) async {
    final emailAddressString = emailAddress.getOrCrash();
    final passwordAddressString = password.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: emailAddressString,
        password: passwordAddressString,
      );
      return right(unit); //void Unit from dartz
    } on PlatformException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();
      print("googleUser :");

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final GoogleSignInAuthentication googleAuthentication =
          await googleUser.authentication;
      print("googleAuthentication: ");

      final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuthentication.idToken,
        accessToken: googleAuthentication.accessToken,
      );

      await FirebaseAuth.instance.signInWithCredential(authCredential);
      // return await _firebaseAuth
      //     .signInWithCredential(authCredential)
      //     .then((r) => right(unit));
      return right(unit);
      //PlatformException
    } on Exception catch (e) {
      print("Error google sing in");
      print("ERROR: ${e.toString()}");

      return left(const AuthFailure.serverError());
    }
  }
}

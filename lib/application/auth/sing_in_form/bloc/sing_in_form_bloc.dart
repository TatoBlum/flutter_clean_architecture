import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_my_app/domain/auth/auth_failure.dart';
import 'package:flutter_my_app/domain/auth/i_auth_facade.dart';
import 'package:flutter_my_app/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'sing_in_form_event.dart';
part 'sing_in_form_state.dart';

part 'sing_in_form_bloc.freezed.dart';

@injectable
class SingInFormBloc extends Bloc<SingInFormEvent, SignInFormState> {
  final IAuthFacade _authFacade;

  SingInFormBloc(this._authFacade) : super(SignInFormState.initial()) {
    on<EmaiChanged>(_emailChange);
    on<PasswordChanged>(_passwordChanged);
    on<SingInWithGooglePressed>(_singInWithGooglePressed);
    on<RegisterWithEmailAndPasswordPressed>(
      _registerWithEmailAndPasswordPressed,
    );
    on<SingInWithEmailAndPasswordPressed>(_singInWithEmailAndPasswordPressed);
  }

  Future<void> _emailChange(
    EmaiChanged event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        emailAddress: EmailAddress(event.emailString),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _passwordChanged(
    PasswordChanged event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(
        password: Password(event.passwordString),
        authFailureOrSuccessOption: none(),
      ),
    );
  }

  Future<void> _singInWithGooglePressed(
    SingInWithGooglePressed event,
    Emitter<SignInFormState> emit,
  ) async {
    emit(
      state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none()),
    );
    final failureOrSuccess = await _authFacade.signInWithGoogle();
    // print("failureOrSuccess : $failureOrSuccess");
    emit(
      state.copyWith(
        isSubmitting: false,
        authFailureOrSuccessOption: some(failureOrSuccess),
      ),
    );
  }

  Future<void> _registerWithEmailAndPasswordPressed(
      RegisterWithEmailAndPasswordPressed event,
      Emitter<SignInFormState> emit,) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPassowrdValid = state.password.isValid();

    if (isEmailValid && isPassowrdValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );
      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password,);
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }

  Future<void> _singInWithEmailAndPasswordPressed(
    SingInWithEmailAndPasswordPressed event,
    Emitter<SignInFormState> emit,
  ) async {
    Either<AuthFailure, Unit>? failureOrSuccess;

    final isEmailValid = state.emailAddress.isValid();
    final isPassowrdValid = state.password.isValid();

    if (isEmailValid && isPassowrdValid) {
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccessOption: none(),
        ),
      );
      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
        emailAddress: state.emailAddress,
        password: state.password,
      );
    }

    emit(
      state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess),
      ),
    );
  }
}

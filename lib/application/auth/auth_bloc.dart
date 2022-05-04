import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_my_app/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const AuthState.initial()) {
    on<AuthChechRequested>(_authChechRequested);
    on<SignOut>(_singOut);
  }

  Future<void> _authChechRequested(
      AuthChechRequested event, Emitter<AuthState> emit,) async {
    final userOption = await _authFacade.getSignedInUser();
    emit(
      userOption.fold(
        () => const AuthState.unauthenticated(), // non user present 
        (_) => const AuthState.authenticated(), 
      ),
    );
  }

  Future<void> _singOut(SignOut event, Emitter<AuthState> emit,) async {
    await _authFacade.signOut();
    emit(const AuthState.unauthenticated(),);
  }
}

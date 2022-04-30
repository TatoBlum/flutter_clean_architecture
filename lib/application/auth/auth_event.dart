part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authchechRequested() = AuthChechRequested;
  const factory AuthEvent.signOut() = SignOut;
}

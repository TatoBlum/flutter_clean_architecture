part of 'sing_in_form_bloc.dart';

@freezed
class SingInFormEvent with _$SingInFormEvent {
  const factory SingInFormEvent.emailChanged(String emailString) = EmaiChanged;
  const factory SingInFormEvent.passwordChanged(String passwordString) =
      PasswordChanged;
  const factory SingInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  const factory SingInFormEvent.singInWithEmailAndPasswordPressed() =
      SingInWithEmailAndPasswordPressed;
  const factory SingInFormEvent.singInWithGooglePressed() =
      SingInWithGooglePressed;
}

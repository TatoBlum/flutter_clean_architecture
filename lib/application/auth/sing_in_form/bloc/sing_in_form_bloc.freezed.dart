// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sing_in_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SingInFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() singInWithEmailAndPasswordPressed,
    required TResult Function() singInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmaiChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SingInWithEmailAndPasswordPressed value)
        singInWithEmailAndPasswordPressed,
    required TResult Function(SingInWithGooglePressed value)
        singInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingInFormEventCopyWith<$Res> {
  factory $SingInFormEventCopyWith(
          SingInFormEvent value, $Res Function(SingInFormEvent) then) =
      _$SingInFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingInFormEventCopyWithImpl<$Res>
    implements $SingInFormEventCopyWith<$Res> {
  _$SingInFormEventCopyWithImpl(this._value, this._then);

  final SingInFormEvent _value;
  // ignore: unused_field
  final $Res Function(SingInFormEvent) _then;
}

/// @nodoc
abstract class $EmaiChangedCopyWith<$Res> {
  factory $EmaiChangedCopyWith(
          EmaiChanged value, $Res Function(EmaiChanged) then) =
      _$EmaiChangedCopyWithImpl<$Res>;
  $Res call({String emailString});
}

/// @nodoc
class _$EmaiChangedCopyWithImpl<$Res>
    extends _$SingInFormEventCopyWithImpl<$Res>
    implements $EmaiChangedCopyWith<$Res> {
  _$EmaiChangedCopyWithImpl(
      EmaiChanged _value, $Res Function(EmaiChanged) _then)
      : super(_value, (v) => _then(v as EmaiChanged));

  @override
  EmaiChanged get _value => super._value as EmaiChanged;

  @override
  $Res call({
    Object? emailString = freezed,
  }) {
    return _then(EmaiChanged(
      emailString == freezed
          ? _value.emailString
          : emailString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EmaiChanged implements EmaiChanged {
  const _$EmaiChanged(this.emailString);

  @override
  final String emailString;

  @override
  String toString() {
    return 'SingInFormEvent.emailChanged(emailString: $emailString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EmaiChanged &&
            const DeepCollectionEquality()
                .equals(other.emailString, emailString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(emailString));

  @JsonKey(ignore: true)
  @override
  $EmaiChangedCopyWith<EmaiChanged> get copyWith =>
      _$EmaiChangedCopyWithImpl<EmaiChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() singInWithEmailAndPasswordPressed,
    required TResult Function() singInWithGooglePressed,
  }) {
    return emailChanged(emailString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
  }) {
    return emailChanged?.call(emailString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(emailString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmaiChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SingInWithEmailAndPasswordPressed value)
        singInWithEmailAndPasswordPressed,
    required TResult Function(SingInWithGooglePressed value)
        singInWithGooglePressed,
  }) {
    return emailChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
  }) {
    return emailChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (emailChanged != null) {
      return emailChanged(this);
    }
    return orElse();
  }
}

abstract class EmaiChanged implements SingInFormEvent {
  const factory EmaiChanged(final String emailString) = _$EmaiChanged;

  String get emailString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EmaiChangedCopyWith<EmaiChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangedCopyWith<$Res> {
  factory $PasswordChangedCopyWith(
          PasswordChanged value, $Res Function(PasswordChanged) then) =
      _$PasswordChangedCopyWithImpl<$Res>;
  $Res call({String passwordString});
}

/// @nodoc
class _$PasswordChangedCopyWithImpl<$Res>
    extends _$SingInFormEventCopyWithImpl<$Res>
    implements $PasswordChangedCopyWith<$Res> {
  _$PasswordChangedCopyWithImpl(
      PasswordChanged _value, $Res Function(PasswordChanged) _then)
      : super(_value, (v) => _then(v as PasswordChanged));

  @override
  PasswordChanged get _value => super._value as PasswordChanged;

  @override
  $Res call({
    Object? passwordString = freezed,
  }) {
    return _then(PasswordChanged(
      passwordString == freezed
          ? _value.passwordString
          : passwordString // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasswordChanged implements PasswordChanged {
  const _$PasswordChanged(this.passwordString);

  @override
  final String passwordString;

  @override
  String toString() {
    return 'SingInFormEvent.passwordChanged(passwordString: $passwordString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PasswordChanged &&
            const DeepCollectionEquality()
                .equals(other.passwordString, passwordString));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordString));

  @JsonKey(ignore: true)
  @override
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      _$PasswordChangedCopyWithImpl<PasswordChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() singInWithEmailAndPasswordPressed,
    required TResult Function() singInWithGooglePressed,
  }) {
    return passwordChanged(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
  }) {
    return passwordChanged?.call(passwordString);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(passwordString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmaiChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SingInWithEmailAndPasswordPressed value)
        singInWithEmailAndPasswordPressed,
    required TResult Function(SingInWithGooglePressed value)
        singInWithGooglePressed,
  }) {
    return passwordChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
  }) {
    return passwordChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (passwordChanged != null) {
      return passwordChanged(this);
    }
    return orElse();
  }
}

abstract class PasswordChanged implements SingInFormEvent {
  const factory PasswordChanged(final String passwordString) =
      _$PasswordChanged;

  String get passwordString => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangedCopyWith<PasswordChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $RegisterWithEmailAndPasswordPressedCopyWith(
          RegisterWithEmailAndPasswordPressed value,
          $Res Function(RegisterWithEmailAndPasswordPressed) then) =
      _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$RegisterWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SingInFormEventCopyWithImpl<$Res>
    implements $RegisterWithEmailAndPasswordPressedCopyWith<$Res> {
  _$RegisterWithEmailAndPasswordPressedCopyWithImpl(
      RegisterWithEmailAndPasswordPressed _value,
      $Res Function(RegisterWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as RegisterWithEmailAndPasswordPressed));

  @override
  RegisterWithEmailAndPasswordPressed get _value =>
      super._value as RegisterWithEmailAndPasswordPressed;
}

/// @nodoc

class _$RegisterWithEmailAndPasswordPressed
    implements RegisterWithEmailAndPasswordPressed {
  const _$RegisterWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SingInFormEvent.registerWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RegisterWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() singInWithEmailAndPasswordPressed,
    required TResult Function() singInWithGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmaiChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SingInWithEmailAndPasswordPressed value)
        singInWithEmailAndPasswordPressed,
    required TResult Function(SingInWithGooglePressed value)
        singInWithGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
  }) {
    return registerWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (registerWithEmailAndPasswordPressed != null) {
      return registerWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class RegisterWithEmailAndPasswordPressed implements SingInFormEvent {
  const factory RegisterWithEmailAndPasswordPressed() =
      _$RegisterWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $SingInWithEmailAndPasswordPressedCopyWith<$Res> {
  factory $SingInWithEmailAndPasswordPressedCopyWith(
          SingInWithEmailAndPasswordPressed value,
          $Res Function(SingInWithEmailAndPasswordPressed) then) =
      _$SingInWithEmailAndPasswordPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingInWithEmailAndPasswordPressedCopyWithImpl<$Res>
    extends _$SingInFormEventCopyWithImpl<$Res>
    implements $SingInWithEmailAndPasswordPressedCopyWith<$Res> {
  _$SingInWithEmailAndPasswordPressedCopyWithImpl(
      SingInWithEmailAndPasswordPressed _value,
      $Res Function(SingInWithEmailAndPasswordPressed) _then)
      : super(_value, (v) => _then(v as SingInWithEmailAndPasswordPressed));

  @override
  SingInWithEmailAndPasswordPressed get _value =>
      super._value as SingInWithEmailAndPasswordPressed;
}

/// @nodoc

class _$SingInWithEmailAndPasswordPressed
    implements SingInWithEmailAndPasswordPressed {
  const _$SingInWithEmailAndPasswordPressed();

  @override
  String toString() {
    return 'SingInFormEvent.singInWithEmailAndPasswordPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SingInWithEmailAndPasswordPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() singInWithEmailAndPasswordPressed,
    required TResult Function() singInWithGooglePressed,
  }) {
    return singInWithEmailAndPasswordPressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
  }) {
    return singInWithEmailAndPasswordPressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (singInWithEmailAndPasswordPressed != null) {
      return singInWithEmailAndPasswordPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmaiChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SingInWithEmailAndPasswordPressed value)
        singInWithEmailAndPasswordPressed,
    required TResult Function(SingInWithGooglePressed value)
        singInWithGooglePressed,
  }) {
    return singInWithEmailAndPasswordPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
  }) {
    return singInWithEmailAndPasswordPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (singInWithEmailAndPasswordPressed != null) {
      return singInWithEmailAndPasswordPressed(this);
    }
    return orElse();
  }
}

abstract class SingInWithEmailAndPasswordPressed implements SingInFormEvent {
  const factory SingInWithEmailAndPasswordPressed() =
      _$SingInWithEmailAndPasswordPressed;
}

/// @nodoc
abstract class $SingInWithGooglePressedCopyWith<$Res> {
  factory $SingInWithGooglePressedCopyWith(SingInWithGooglePressed value,
          $Res Function(SingInWithGooglePressed) then) =
      _$SingInWithGooglePressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SingInWithGooglePressedCopyWithImpl<$Res>
    extends _$SingInFormEventCopyWithImpl<$Res>
    implements $SingInWithGooglePressedCopyWith<$Res> {
  _$SingInWithGooglePressedCopyWithImpl(SingInWithGooglePressed _value,
      $Res Function(SingInWithGooglePressed) _then)
      : super(_value, (v) => _then(v as SingInWithGooglePressed));

  @override
  SingInWithGooglePressed get _value => super._value as SingInWithGooglePressed;
}

/// @nodoc

class _$SingInWithGooglePressed implements SingInWithGooglePressed {
  const _$SingInWithGooglePressed();

  @override
  String toString() {
    return 'SingInFormEvent.singInWithGooglePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is SingInWithGooglePressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String emailString) emailChanged,
    required TResult Function(String passwordString) passwordChanged,
    required TResult Function() registerWithEmailAndPasswordPressed,
    required TResult Function() singInWithEmailAndPasswordPressed,
    required TResult Function() singInWithGooglePressed,
  }) {
    return singInWithGooglePressed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
  }) {
    return singInWithGooglePressed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String emailString)? emailChanged,
    TResult Function(String passwordString)? passwordChanged,
    TResult Function()? registerWithEmailAndPasswordPressed,
    TResult Function()? singInWithEmailAndPasswordPressed,
    TResult Function()? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (singInWithGooglePressed != null) {
      return singInWithGooglePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EmaiChanged value) emailChanged,
    required TResult Function(PasswordChanged value) passwordChanged,
    required TResult Function(RegisterWithEmailAndPasswordPressed value)
        registerWithEmailAndPasswordPressed,
    required TResult Function(SingInWithEmailAndPasswordPressed value)
        singInWithEmailAndPasswordPressed,
    required TResult Function(SingInWithGooglePressed value)
        singInWithGooglePressed,
  }) {
    return singInWithGooglePressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
  }) {
    return singInWithGooglePressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EmaiChanged value)? emailChanged,
    TResult Function(PasswordChanged value)? passwordChanged,
    TResult Function(RegisterWithEmailAndPasswordPressed value)?
        registerWithEmailAndPasswordPressed,
    TResult Function(SingInWithEmailAndPasswordPressed value)?
        singInWithEmailAndPasswordPressed,
    TResult Function(SingInWithGooglePressed value)? singInWithGooglePressed,
    required TResult orElse(),
  }) {
    if (singInWithGooglePressed != null) {
      return singInWithGooglePressed(this);
    }
    return orElse();
  }
}

abstract class SingInWithGooglePressed implements SingInFormEvent {
  const factory SingInWithGooglePressed() = _$SingInWithGooglePressed;
}

/// @nodoc
mixin _$SignInFormState {
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInFormStateCopyWith<SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInFormStateCopyWith<$Res> {
  factory $SignInFormStateCopyWith(
          SignInFormState value, $Res Function(SignInFormState) then) =
      _$SignInFormStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class _$SignInFormStateCopyWithImpl<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  _$SignInFormStateCopyWithImpl(this._value, this._then);

  final SignInFormState _value;
  // ignore: unused_field
  final $Res Function(SignInFormState) _then;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $SignInFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAddress emailAddress,
      Password password,
      bool showErrorMessages,
      bool isSubmitting,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption});
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$SignInFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? emailAddress = freezed,
    Object? password = freezed,
    Object? showErrorMessages = freezed,
    Object? isSubmitting = freezed,
    Object? authFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      emailAddress: emailAddress == freezed
          ? _value.emailAddress
          : emailAddress // ignore: cast_nullable_to_non_nullable
              as EmailAddress,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSubmitting: isSubmitting == freezed
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      authFailureOrSuccessOption: authFailureOrSuccessOption == freezed
          ? _value.authFailureOrSuccessOption
          : authFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AuthFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.emailAddress,
      required this.password,
      required this.showErrorMessages,
      required this.isSubmitting,
      required this.authFailureOrSuccessOption});

  @override
  final EmailAddress emailAddress;
  @override
  final Password password;
  @override
  final bool showErrorMessages;
  @override
  final bool isSubmitting;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInFormState(emailAddress: $emailAddress, password: $password, showErrorMessages: $showErrorMessages, isSubmitting: $isSubmitting, authFailureOrSuccessOption: $authFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignInFormState &&
            const DeepCollectionEquality()
                .equals(other.emailAddress, emailAddress) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality()
                .equals(other.isSubmitting, isSubmitting) &&
            const DeepCollectionEquality().equals(
                other.authFailureOrSuccessOption, authFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(emailAddress),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSubmitting),
      const DeepCollectionEquality().hash(authFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements SignInFormState {
  const factory _SignInFormState(
      {required final EmailAddress emailAddress,
      required final Password password,
      required final bool showErrorMessages,
      required final bool isSubmitting,
      required final Option<Either<AuthFailure, Unit>>
          authFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  EmailAddress get emailAddress => throw _privateConstructorUsedError;
  @override
  Password get password => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSubmitting => throw _privateConstructorUsedError;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

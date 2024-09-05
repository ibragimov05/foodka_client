// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() googleAuth,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? googleAuth,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? googleAuth,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(GoogleAuthLogin value) googleAuth,
    required TResult Function(SignupEvent value) signup,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(GoogleAuthLogin value)? googleAuth,
    TResult? Function(SignupEvent value)? signup,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(GoogleAuthLogin value)? googleAuth,
    TResult Function(SignupEvent value)? signup,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginEventImplCopyWith<$Res> {
  factory _$$LoginEventImplCopyWith(
          _$LoginEventImpl value, $Res Function(_$LoginEventImpl) then) =
      __$$LoginEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginEventImpl>
    implements _$$LoginEventImplCopyWith<$Res> {
  __$$LoginEventImplCopyWithImpl(
      _$LoginEventImpl _value, $Res Function(_$LoginEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginEventImpl implements LoginEvent {
  const _$LoginEventImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.login(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginEventImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      __$$LoginEventImplCopyWithImpl<_$LoginEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() googleAuth,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logOut,
  }) {
    return login(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? googleAuth,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logOut,
  }) {
    return login?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? googleAuth,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(GoogleAuthLogin value) googleAuth,
    required TResult Function(SignupEvent value) signup,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return login(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(GoogleAuthLogin value)? googleAuth,
    TResult? Function(SignupEvent value)? signup,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return login?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(GoogleAuthLogin value)? googleAuth,
    TResult Function(SignupEvent value)? signup,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (login != null) {
      return login(this);
    }
    return orElse();
  }
}

abstract class LoginEvent implements AuthEvent {
  const factory LoginEvent(
      {required final String email,
      required final String password}) = _$LoginEventImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginEventImplCopyWith<_$LoginEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GoogleAuthLoginImplCopyWith<$Res> {
  factory _$$GoogleAuthLoginImplCopyWith(_$GoogleAuthLoginImpl value,
          $Res Function(_$GoogleAuthLoginImpl) then) =
      __$$GoogleAuthLoginImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GoogleAuthLoginImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$GoogleAuthLoginImpl>
    implements _$$GoogleAuthLoginImplCopyWith<$Res> {
  __$$GoogleAuthLoginImplCopyWithImpl(
      _$GoogleAuthLoginImpl _value, $Res Function(_$GoogleAuthLoginImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GoogleAuthLoginImpl implements GoogleAuthLogin {
  const _$GoogleAuthLoginImpl();

  @override
  String toString() {
    return 'AuthEvent.googleAuth()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GoogleAuthLoginImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() googleAuth,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logOut,
  }) {
    return googleAuth();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? googleAuth,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logOut,
  }) {
    return googleAuth?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? googleAuth,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (googleAuth != null) {
      return googleAuth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(GoogleAuthLogin value) googleAuth,
    required TResult Function(SignupEvent value) signup,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return googleAuth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(GoogleAuthLogin value)? googleAuth,
    TResult? Function(SignupEvent value)? signup,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return googleAuth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(GoogleAuthLogin value)? googleAuth,
    TResult Function(SignupEvent value)? signup,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (googleAuth != null) {
      return googleAuth(this);
    }
    return orElse();
  }
}

abstract class GoogleAuthLogin implements AuthEvent {
  const factory GoogleAuthLogin() = _$GoogleAuthLoginImpl;
}

/// @nodoc
abstract class _$$SignupEventImplCopyWith<$Res> {
  factory _$$SignupEventImplCopyWith(
          _$SignupEventImpl value, $Res Function(_$SignupEventImpl) then) =
      __$$SignupEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$SignupEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SignupEventImpl>
    implements _$$SignupEventImplCopyWith<$Res> {
  __$$SignupEventImplCopyWithImpl(
      _$SignupEventImpl _value, $Res Function(_$SignupEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$SignupEventImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SignupEventImpl implements SignupEvent {
  const _$SignupEventImpl(
      {required this.name, required this.email, required this.password});

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.signup(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SignupEventImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SignupEventImplCopyWith<_$SignupEventImpl> get copyWith =>
      __$$SignupEventImplCopyWithImpl<_$SignupEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() googleAuth,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logOut,
  }) {
    return signup(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? googleAuth,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logOut,
  }) {
    return signup?.call(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? googleAuth,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(GoogleAuthLogin value) googleAuth,
    required TResult Function(SignupEvent value) signup,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return signup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(GoogleAuthLogin value)? googleAuth,
    TResult? Function(SignupEvent value)? signup,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return signup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(GoogleAuthLogin value)? googleAuth,
    TResult Function(SignupEvent value)? signup,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (signup != null) {
      return signup(this);
    }
    return orElse();
  }
}

abstract class SignupEvent implements AuthEvent {
  const factory SignupEvent(
      {required final String name,
      required final String email,
      required final String password}) = _$SignupEventImpl;

  String get name;
  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SignupEventImplCopyWith<_$SignupEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResetPasswordEventImplCopyWith<$Res> {
  factory _$$ResetPasswordEventImplCopyWith(_$ResetPasswordEventImpl value,
          $Res Function(_$ResetPasswordEventImpl) then) =
      __$$ResetPasswordEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ResetPasswordEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ResetPasswordEventImpl>
    implements _$$ResetPasswordEventImplCopyWith<$Res> {
  __$$ResetPasswordEventImplCopyWithImpl(_$ResetPasswordEventImpl _value,
      $Res Function(_$ResetPasswordEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$ResetPasswordEventImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ResetPasswordEventImpl implements ResetPasswordEvent {
  const _$ResetPasswordEventImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.resetPassword(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResetPasswordEventImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      __$$ResetPasswordEventImplCopyWithImpl<_$ResetPasswordEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() googleAuth,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logOut,
  }) {
    return resetPassword(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? googleAuth,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logOut,
  }) {
    return resetPassword?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? googleAuth,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(GoogleAuthLogin value) googleAuth,
    required TResult Function(SignupEvent value) signup,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return resetPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(GoogleAuthLogin value)? googleAuth,
    TResult? Function(SignupEvent value)? signup,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return resetPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(GoogleAuthLogin value)? googleAuth,
    TResult Function(SignupEvent value)? signup,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (resetPassword != null) {
      return resetPassword(this);
    }
    return orElse();
  }
}

abstract class ResetPasswordEvent implements AuthEvent {
  const factory ResetPasswordEvent({required final String email}) =
      _$ResetPasswordEventImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResetPasswordEventImplCopyWith<_$ResetPasswordEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckTokenExpiryEventImplCopyWith<$Res> {
  factory _$$CheckTokenExpiryEventImplCopyWith(
          _$CheckTokenExpiryEventImpl value,
          $Res Function(_$CheckTokenExpiryEventImpl) then) =
      __$$CheckTokenExpiryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckTokenExpiryEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckTokenExpiryEventImpl>
    implements _$$CheckTokenExpiryEventImplCopyWith<$Res> {
  __$$CheckTokenExpiryEventImplCopyWithImpl(_$CheckTokenExpiryEventImpl _value,
      $Res Function(_$CheckTokenExpiryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckTokenExpiryEventImpl implements CheckTokenExpiryEvent {
  const _$CheckTokenExpiryEventImpl();

  @override
  String toString() {
    return 'AuthEvent.checkTokenExpiry()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckTokenExpiryEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() googleAuth,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logOut,
  }) {
    return checkTokenExpiry();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? googleAuth,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logOut,
  }) {
    return checkTokenExpiry?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? googleAuth,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (checkTokenExpiry != null) {
      return checkTokenExpiry();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(GoogleAuthLogin value) googleAuth,
    required TResult Function(SignupEvent value) signup,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return checkTokenExpiry(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(GoogleAuthLogin value)? googleAuth,
    TResult? Function(SignupEvent value)? signup,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return checkTokenExpiry?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(GoogleAuthLogin value)? googleAuth,
    TResult Function(SignupEvent value)? signup,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (checkTokenExpiry != null) {
      return checkTokenExpiry(this);
    }
    return orElse();
  }
}

abstract class CheckTokenExpiryEvent implements AuthEvent {
  const factory CheckTokenExpiryEvent() = _$CheckTokenExpiryEventImpl;
}

/// @nodoc
abstract class _$$LogoutEventImplCopyWith<$Res> {
  factory _$$LogoutEventImplCopyWith(
          _$LogoutEventImpl value, $Res Function(_$LogoutEventImpl) then) =
      __$$LogoutEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutEventImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutEventImpl>
    implements _$$LogoutEventImplCopyWith<$Res> {
  __$$LogoutEventImplCopyWithImpl(
      _$LogoutEventImpl _value, $Res Function(_$LogoutEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutEventImpl implements LogoutEvent {
  const _$LogoutEventImpl();

  @override
  String toString() {
    return 'AuthEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) login,
    required TResult Function() googleAuth,
    required TResult Function(String name, String email, String password)
        signup,
    required TResult Function(String email) resetPassword,
    required TResult Function() checkTokenExpiry,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? login,
    TResult? Function()? googleAuth,
    TResult? Function(String name, String email, String password)? signup,
    TResult? Function(String email)? resetPassword,
    TResult? Function()? checkTokenExpiry,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? login,
    TResult Function()? googleAuth,
    TResult Function(String name, String email, String password)? signup,
    TResult Function(String email)? resetPassword,
    TResult Function()? checkTokenExpiry,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginEvent value) login,
    required TResult Function(GoogleAuthLogin value) googleAuth,
    required TResult Function(SignupEvent value) signup,
    required TResult Function(ResetPasswordEvent value) resetPassword,
    required TResult Function(CheckTokenExpiryEvent value) checkTokenExpiry,
    required TResult Function(LogoutEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginEvent value)? login,
    TResult? Function(GoogleAuthLogin value)? googleAuth,
    TResult? Function(SignupEvent value)? signup,
    TResult? Function(ResetPasswordEvent value)? resetPassword,
    TResult? Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult? Function(LogoutEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginEvent value)? login,
    TResult Function(GoogleAuthLogin value)? googleAuth,
    TResult Function(SignupEvent value)? signup,
    TResult Function(ResetPasswordEvent value)? resetPassword,
    TResult Function(CheckTokenExpiryEvent value)? checkTokenExpiry,
    TResult Function(LogoutEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogoutEvent implements AuthEvent {
  const factory LogoutEvent() = _$LogoutEventImpl;
}

/// @nodoc
mixin _$AuthState {
  AuthStatus get authStatus => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call({AuthStatus authStatus, String? error});
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthStateImplCopyWith<$Res>
    implements $AuthStateCopyWith<$Res> {
  factory _$$AuthStateImplCopyWith(
          _$AuthStateImpl value, $Res Function(_$AuthStateImpl) then) =
      __$$AuthStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthStatus authStatus, String? error});
}

/// @nodoc
class __$$AuthStateImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthStateImpl>
    implements _$$AuthStateImplCopyWith<$Res> {
  __$$AuthStateImplCopyWithImpl(
      _$AuthStateImpl _value, $Res Function(_$AuthStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$AuthStateImpl(
      authStatus: null == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AuthStateImpl implements _AuthState {
  const _$AuthStateImpl({this.authStatus = AuthStatus.initial, this.error});

  @override
  @JsonKey()
  final AuthStatus authStatus;
  @override
  final String? error;

  @override
  String toString() {
    return 'AuthState(authStatus: $authStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthStateImpl &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authStatus, error);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      __$$AuthStateImplCopyWithImpl<_$AuthStateImpl>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState({final AuthStatus authStatus, final String? error}) =
      _$AuthStateImpl;

  @override
  AuthStatus get authStatus;
  @override
  String? get error;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthStateImplCopyWith<_$AuthStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

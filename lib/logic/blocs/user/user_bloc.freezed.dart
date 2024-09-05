// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(UserAddRequest userAddRequest) add,
    required TResult Function(UserEditRequest userEditRequest) updateData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(UserAddRequest userAddRequest)? add,
    TResult? Function(UserEditRequest userEditRequest)? updateData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(UserAddRequest userAddRequest)? add,
    TResult Function(UserEditRequest userEditRequest)? updateData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) get,
    required TResult Function(AddUserEvent value) add,
    required TResult Function(EditUserEvent value) updateData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? get,
    TResult? Function(AddUserEvent value)? add,
    TResult? Function(EditUserEvent value)? updateData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? get,
    TResult Function(AddUserEvent value)? add,
    TResult Function(EditUserEvent value)? updateData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEventCopyWith<$Res> {
  factory $UserEventCopyWith(UserEvent value, $Res Function(UserEvent) then) =
      _$UserEventCopyWithImpl<$Res, UserEvent>;
}

/// @nodoc
class _$UserEventCopyWithImpl<$Res, $Val extends UserEvent>
    implements $UserEventCopyWith<$Res> {
  _$UserEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetUserEventImplCopyWith<$Res> {
  factory _$$GetUserEventImplCopyWith(
          _$GetUserEventImpl value, $Res Function(_$GetUserEventImpl) then) =
      __$$GetUserEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$GetUserEventImpl>
    implements _$$GetUserEventImplCopyWith<$Res> {
  __$$GetUserEventImplCopyWithImpl(
      _$GetUserEventImpl _value, $Res Function(_$GetUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUserEventImpl implements GetUserEvent {
  const _$GetUserEventImpl();

  @override
  String toString() {
    return 'UserEvent.get()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(UserAddRequest userAddRequest) add,
    required TResult Function(UserEditRequest userEditRequest) updateData,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(UserAddRequest userAddRequest)? add,
    TResult? Function(UserEditRequest userEditRequest)? updateData,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(UserAddRequest userAddRequest)? add,
    TResult Function(UserEditRequest userEditRequest)? updateData,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) get,
    required TResult Function(AddUserEvent value) add,
    required TResult Function(EditUserEvent value) updateData,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? get,
    TResult? Function(AddUserEvent value)? add,
    TResult? Function(EditUserEvent value)? updateData,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? get,
    TResult Function(AddUserEvent value)? add,
    TResult Function(EditUserEvent value)? updateData,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class GetUserEvent implements UserEvent {
  const factory GetUserEvent() = _$GetUserEventImpl;
}

/// @nodoc
abstract class _$$AddUserEventImplCopyWith<$Res> {
  factory _$$AddUserEventImplCopyWith(
          _$AddUserEventImpl value, $Res Function(_$AddUserEventImpl) then) =
      __$$AddUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserAddRequest userAddRequest});
}

/// @nodoc
class __$$AddUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$AddUserEventImpl>
    implements _$$AddUserEventImplCopyWith<$Res> {
  __$$AddUserEventImplCopyWithImpl(
      _$AddUserEventImpl _value, $Res Function(_$AddUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userAddRequest = null,
  }) {
    return _then(_$AddUserEventImpl(
      userAddRequest: null == userAddRequest
          ? _value.userAddRequest
          : userAddRequest // ignore: cast_nullable_to_non_nullable
              as UserAddRequest,
    ));
  }
}

/// @nodoc

class _$AddUserEventImpl implements AddUserEvent {
  const _$AddUserEventImpl({required this.userAddRequest});

  @override
  final UserAddRequest userAddRequest;

  @override
  String toString() {
    return 'UserEvent.add(userAddRequest: $userAddRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUserEventImpl &&
            (identical(other.userAddRequest, userAddRequest) ||
                other.userAddRequest == userAddRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userAddRequest);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUserEventImplCopyWith<_$AddUserEventImpl> get copyWith =>
      __$$AddUserEventImplCopyWithImpl<_$AddUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(UserAddRequest userAddRequest) add,
    required TResult Function(UserEditRequest userEditRequest) updateData,
  }) {
    return add(userAddRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(UserAddRequest userAddRequest)? add,
    TResult? Function(UserEditRequest userEditRequest)? updateData,
  }) {
    return add?.call(userAddRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(UserAddRequest userAddRequest)? add,
    TResult Function(UserEditRequest userEditRequest)? updateData,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(userAddRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) get,
    required TResult Function(AddUserEvent value) add,
    required TResult Function(EditUserEvent value) updateData,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? get,
    TResult? Function(AddUserEvent value)? add,
    TResult? Function(EditUserEvent value)? updateData,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? get,
    TResult Function(AddUserEvent value)? add,
    TResult Function(EditUserEvent value)? updateData,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class AddUserEvent implements UserEvent {
  const factory AddUserEvent({required final UserAddRequest userAddRequest}) =
      _$AddUserEventImpl;

  UserAddRequest get userAddRequest;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUserEventImplCopyWith<_$AddUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditUserEventImplCopyWith<$Res> {
  factory _$$EditUserEventImplCopyWith(
          _$EditUserEventImpl value, $Res Function(_$EditUserEventImpl) then) =
      __$$EditUserEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserEditRequest userEditRequest});
}

/// @nodoc
class __$$EditUserEventImplCopyWithImpl<$Res>
    extends _$UserEventCopyWithImpl<$Res, _$EditUserEventImpl>
    implements _$$EditUserEventImplCopyWith<$Res> {
  __$$EditUserEventImplCopyWithImpl(
      _$EditUserEventImpl _value, $Res Function(_$EditUserEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEditRequest = null,
  }) {
    return _then(_$EditUserEventImpl(
      userEditRequest: null == userEditRequest
          ? _value.userEditRequest
          : userEditRequest // ignore: cast_nullable_to_non_nullable
              as UserEditRequest,
    ));
  }
}

/// @nodoc

class _$EditUserEventImpl implements EditUserEvent {
  const _$EditUserEventImpl({required this.userEditRequest});

  @override
  final UserEditRequest userEditRequest;

  @override
  String toString() {
    return 'UserEvent.updateData(userEditRequest: $userEditRequest)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditUserEventImpl &&
            (identical(other.userEditRequest, userEditRequest) ||
                other.userEditRequest == userEditRequest));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userEditRequest);

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditUserEventImplCopyWith<_$EditUserEventImpl> get copyWith =>
      __$$EditUserEventImplCopyWithImpl<_$EditUserEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(UserAddRequest userAddRequest) add,
    required TResult Function(UserEditRequest userEditRequest) updateData,
  }) {
    return updateData(userEditRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(UserAddRequest userAddRequest)? add,
    TResult? Function(UserEditRequest userEditRequest)? updateData,
  }) {
    return updateData?.call(userEditRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(UserAddRequest userAddRequest)? add,
    TResult Function(UserEditRequest userEditRequest)? updateData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(userEditRequest);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetUserEvent value) get,
    required TResult Function(AddUserEvent value) add,
    required TResult Function(EditUserEvent value) updateData,
  }) {
    return updateData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetUserEvent value)? get,
    TResult? Function(AddUserEvent value)? add,
    TResult? Function(EditUserEvent value)? updateData,
  }) {
    return updateData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetUserEvent value)? get,
    TResult Function(AddUserEvent value)? add,
    TResult Function(EditUserEvent value)? updateData,
    required TResult orElse(),
  }) {
    if (updateData != null) {
      return updateData(this);
    }
    return orElse();
  }
}

abstract class EditUserEvent implements UserEvent {
  const factory EditUserEvent(
      {required final UserEditRequest userEditRequest}) = _$EditUserEventImpl;

  UserEditRequest get userEditRequest;

  /// Create a copy of UserEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditUserEventImplCopyWith<_$EditUserEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserState {
  User? get user => throw _privateConstructorUsedError;
  UserStatus get userStatus => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserStateCopyWith<UserState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserStateCopyWith<$Res> {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) then) =
      _$UserStateCopyWithImpl<$Res, UserState>;
  @useResult
  $Res call({User? user, UserStatus userStatus, String? error});
}

/// @nodoc
class _$UserStateCopyWithImpl<$Res, $Val extends UserState>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? userStatus = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserStateImplCopyWith<$Res>
    implements $UserStateCopyWith<$Res> {
  factory _$$UserStateImplCopyWith(
          _$UserStateImpl value, $Res Function(_$UserStateImpl) then) =
      __$$UserStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User? user, UserStatus userStatus, String? error});
}

/// @nodoc
class __$$UserStateImplCopyWithImpl<$Res>
    extends _$UserStateCopyWithImpl<$Res, _$UserStateImpl>
    implements _$$UserStateImplCopyWith<$Res> {
  __$$UserStateImplCopyWithImpl(
      _$UserStateImpl _value, $Res Function(_$UserStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = freezed,
    Object? userStatus = null,
    Object? error = freezed,
  }) {
    return _then(_$UserStateImpl(
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userStatus: null == userStatus
          ? _value.userStatus
          : userStatus // ignore: cast_nullable_to_non_nullable
              as UserStatus,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UserStateImpl implements _UserState {
  const _$UserStateImpl(
      {this.user, this.userStatus = UserStatus.initial, this.error});

  @override
  final User? user;
  @override
  @JsonKey()
  final UserStatus userStatus;
  @override
  final String? error;

  @override
  String toString() {
    return 'UserState(user: $user, userStatus: $userStatus, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userStatus, userStatus) ||
                other.userStatus == userStatus) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, userStatus, error);

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      __$$UserStateImplCopyWithImpl<_$UserStateImpl>(this, _$identity);
}

abstract class _UserState implements UserState {
  const factory _UserState(
      {final User? user,
      final UserStatus userStatus,
      final String? error}) = _$UserStateImpl;

  @override
  User? get user;
  @override
  UserStatus get userStatus;
  @override
  String? get error;

  /// Create a copy of UserState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserStateImplCopyWith<_$UserStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

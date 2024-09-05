part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.get() = GetUserEvent;

  const factory UserEvent.add({
    required UserAddRequest userAddRequest,
  }) = AddUserEvent;

  const factory UserEvent.updateData({
    required UserEditRequest userEditRequest,
  }) = EditUserEvent;
}

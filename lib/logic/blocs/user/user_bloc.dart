import 'package:bloc/bloc.dart';
import 'package:foodka_client/core/utils/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/models.dart';
import '../../../data/services/services.dart';
import '../../../data/repositories/repositories.dart';

part 'user_event.dart';

part 'user_state.dart';

part 'user_bloc.freezed.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository _userRepository;

  UserBloc({
    required UserRepository userRepository,
  })  : _userRepository = userRepository,
        super(const UserState()) {
    on<UserEvent>(
      (UserEvent events, Emitter<UserState> emit) => events.map(
        get: (GetUserEvent event) => _onGetUser(event, emit),
        add: (AddUserEvent event) => _onAddUser(event, emit),
        updateData: (EditUserEvent event) => _onUpdateUserData(event, emit),
      ),
    );
  }

  void _onGetUser(
    GetUserEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(userStatus: UserStatus.loading));

    try {
      final userSecrets = await UserSecretsLocalStorageService.userSecrets;

      if (userSecrets == null) return;

      final UserGetRequest userGetRequest = UserGetRequest(
        uid: userSecrets.localId,
        email: userSecrets.email,
      );

      final dioResponse = await _userRepository.getUser(
        userGetRequest: userGetRequest,
      );

      if (dioResponse.isSuccess && dioResponse.errorMessage.isEmpty) {
        await UserDataPrefsService.save(dioResponse.data as User);

        UserData.set(dioResponse.data as User);

        emit(
          state.copyWith(userStatus: UserStatus.loaded, user: dioResponse.data),
        );
      } else {
        throw 'error: {status_code: ${dioResponse.errorStatusCode}, message: ${dioResponse.errorMessage}';
      }
    } catch (e) {
      emit(state.copyWith(userStatus: UserStatus.error, error: e.toString()));
    }
  }

  void _onAddUser(
    AddUserEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(userStatus: UserStatus.loading));

    try {} catch (e) {
      emit(state.copyWith(userStatus: UserStatus.error, error: e.toString()));
    }
  }

  void _onUpdateUserData(
    EditUserEvent event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(userStatus: UserStatus.loading));

    try {} catch (e) {
      emit(state.copyWith(userStatus: UserStatus.error, error: e.toString()));
    }
  }
}

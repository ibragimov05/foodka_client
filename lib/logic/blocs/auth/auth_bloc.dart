import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/models/models.dart';
import '../../../data/repositories/repositories.dart';

part 'auth_event.dart';

part 'auth_state.dart';

part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  final UserRepository _userRepository;

  AuthBloc({
    required AuthRepository authRepository,
    required UserRepository userRepository,
  })  : _authRepository = authRepository,
        _userRepository = userRepository,
        super(const AuthState()) {
    on<AuthEvent>(
      (AuthEvent events, Emitter<AuthState> emit) => events.map(
        login: (LoginEvent event) => _login(event, emit),
        googleAuth: (GoogleAuthLogin event) => _googleAuth(event, emit),
        signup: (SignupEvent event) => _signup(event, emit),
        resetPassword: (ResetPasswordEvent event) =>
            _resetPassword(event, emit),
        checkTokenExpiry: (CheckTokenExpiryEvent event) =>
            _checkTokenExpiry(event, emit),
        logOut: (LogoutEvent event) => _logOut(event, emit),
      ),
    );
  }

  Future<void> _login(
    LoginEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      final data = await _authRepository.login(
        email: event.email,
        password: event.password,
      );

      emit(state.copyWith(authStatus: AuthStatus.authenticated));
    } catch (_) {}
  }

  Future<void> _googleAuth(
    GoogleAuthLogin event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {} catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _signup(
    SignupEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      final userSecrets = await _authRepository.register(
        email: event.email,
        password: event.password,
      );

      final dioResponse = await _userRepository.addUser(
        userAddRequest: UserAddRequest(
          uid: userSecrets.localId,
          name: event.name,
          email: event.email,
        ),
      );

      if (dioResponse.isSuccess && dioResponse.errorMessage.isEmpty) {
        emit(state.copyWith(
          user: dioResponse.data,
          authStatus: AuthStatus.authenticated,
        ));
      } else {
        throw 'error: {status_code: ${dioResponse.errorStatusCode}, "message": ${dioResponse.errorMessage}';
      }
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _resetPassword(
    ResetPasswordEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {} catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _checkTokenExpiry(
    CheckTokenExpiryEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {} catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _logOut(
    LogoutEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {} catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }
}

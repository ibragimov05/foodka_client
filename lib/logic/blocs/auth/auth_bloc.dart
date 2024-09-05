import 'package:bloc/bloc.dart';
import 'package:foodka_client/app_config.dart';
import 'package:foodka_client/data/models/models.dart';
import 'package:foodka_client/data/services/services.dart';
import 'package:foodka_client/logic/blocs/blocs.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/repositories/repositories.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;

  AuthBloc({
    required AuthRepository authRepository,
  })  : _authRepository = authRepository,
        super(const AuthState()) {
    on<AuthEvent>(
      (AuthEvent events, Emitter<AuthState> emit) => events.map(
        login: (LoginEvent event) => _onLogin(event, emit),
        googleAuth: (GoogleAuthLogin event) => _onGoogleAuth(event, emit),
        signup: (SignupEvent event) => _onSignup(event, emit),
        resetPassword: (ResetPasswordEvent event) =>
            _onResetPassword(event, emit),
        checkTokenExpiry: (CheckTokenExpiryEvent event) =>
            _onCheckTokenExpiry(event, emit),
        logOut: (LogoutEvent event) => _onLogOut(event, emit),
      ),
    );
  }

  Future<void> _onLogin(
    LoginEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      await _authRepository.login(
        email: event.email,
        password: event.password,
      );

      getIt.get<UserBloc>().add(const UserEvent.get());

      emit(state.copyWith(authStatus: AuthStatus.authenticated));
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _onGoogleAuth(
    GoogleAuthLogin event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {} catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _onSignup(
    SignupEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      final userSecrets = await _authRepository.register(
        email: event.email,
        password: event.password,
      );

      getIt.get<UserBloc>().add(UserEvent.add(
            userAddRequest: UserAddRequest(
              uid: userSecrets.localId,
              name: event.name,
              email: event.email,
            ),
          ));

      emit(state.copyWith(authStatus: AuthStatus.authenticated));
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _onResetPassword(
    ResetPasswordEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {} catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _onCheckTokenExpiry(
    CheckTokenExpiryEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      final userSecrets = await _authRepository.checkTokenExpiry();

      if (userSecrets == null) {
        emit(state.copyWith(authStatus: AuthStatus.unauthenticated));
      } else {
        emit(state.copyWith(authStatus: AuthStatus.authenticated));
      }
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }

  Future<void> _onLogOut(
    LogoutEvent event,
    Emitter<AuthState> emit,
  ) async {
    emit(state.copyWith(authStatus: AuthStatus.loading));

    try {
      await Future.wait([
        _authRepository.clearTokens(),
        UserDataPrefsService.clear(),
      ]);

      emit(state.copyWith(authStatus: AuthStatus.unauthenticated));
    } catch (e) {
      emit(state.copyWith(authStatus: AuthStatus.error, error: e.toString()));
    }
  }
}

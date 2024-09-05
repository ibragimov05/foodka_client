import 'package:bloc/bloc.dart';
import 'package:foodka_client/data/models/user_model/user.dart';
import 'package:foodka_client/data/repositories/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
  ) async {}

  Future<void> _signup(
    SignupEvent event,
    Emitter<AuthState> emit,
  ) async {}

  Future<void> _resetPassword(
    ResetPasswordEvent event,
    Emitter<AuthState> emit,
  ) async {}

  Future<void> _checkTokenExpiry(
    CheckTokenExpiryEvent event,
    Emitter<AuthState> emit,
  ) async {}

  Future<void> _logOut(
    LogoutEvent event,
    Emitter<AuthState> emit,
  ) async {}
}

part of 'auth_bloc.dart';

@immutable
class AuthState {
  final BlocStatus loginStatus;
  final BlocStatus forgetPasswordStatus;

  const AuthState({
    this.loginStatus = const BlocStatus.initial(),
    this.forgetPasswordStatus = const BlocStatus.initial(),
  });

  AuthState copyWith({
    final BlocStatus? loginStatus,
    final BlocStatus? forgetPasswordStatus,
  }) {
    return AuthState(
      loginStatus: loginStatus ?? this.loginStatus,
      forgetPasswordStatus: forgetPasswordStatus ?? this.forgetPasswordStatus,
    );
  }
}

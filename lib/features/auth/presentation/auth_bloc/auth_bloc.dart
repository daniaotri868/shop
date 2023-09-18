import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../../../common/models/page_state/bloc_status.dart';
import '../../../../core/api/result.dart';
import '../../domain/use_case/create_user_usecase.dart';
import '../../domain/use_case/login_usecase.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUsecase loginUsecase;
  final CreatUserUsecase createUserUsecase;

  AuthBloc(this.loginUsecase, this.createUserUsecase )
      : super(const AuthState()) {
    on<LoginEvent>(_onLoginEvent);
    on<createUserEvent>(_onCreateUserEvent);

  }

  FutureOr<void> _onLoginEvent(LoginEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(loginStatus: const BlocStatus.loading()));
    final result = await loginUsecase(LoginParams(email: event.email, password: event.password));
    switch (result) {
      case Success(value: final data):
        emit(state.copyWith(loginStatus: const BlocStatus.success()));
      case Failure(exception: final exception, message: final message):
        emit(state.copyWith(loginStatus: BlocStatus.fail(error: message)));
    }
  }

  FutureOr<void> _onCreateUserEvent(createUserEvent event, Emitter<AuthState> emit) async {
    emit(state.copyWith(forgetPasswordStatus: const BlocStatus.loading()));
    final result = await createUserUsecase(CreateUserParams(email: event.email,password: event.password,username: event.username));
    result.fold((exception, message) => emit(state.copyWith(forgetPasswordStatus: BlocStatus.fail(error: message))),
            (value) => emit(state.copyWith(forgetPasswordStatus: const BlocStatus.success())));
  }

}

import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lesson_13/firebase_auth/data/auth_repository.dart';

part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthRepository authRepository = AuthRepository();

  AuthBloc() : super(const _Initial()) {
    on<_SignIn>((event, emit) async {
      emit(const AuthState.loading());

      String? result =
          await authRepository.signInUser(event.email, event.password);

      if (result == null) {
        emit(const AuthState.successful());
      } else {
        emit(AuthState.error(result));
      }
    });
    on<_Register>((event, emit) async {
      emit(const AuthState.loading());

      String? result = await authRepository.registerWithEmailAndPassword(
          event.email, event.password);

      if (result == null) {
        emit(const AuthState.successful());
      } else {
        emit(AuthState.error(result));
      }
    });
  }
}

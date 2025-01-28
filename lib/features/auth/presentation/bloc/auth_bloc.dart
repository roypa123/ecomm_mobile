import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthInitial()) {
    on<AuthEvent>((event, emit) {
      emit(const AuthLoading());
    });
    on<SignInEvent>(_emailSignInHandler);
    on<SignUpEvent>(_emailSignUpHandler);
  }

  //---------Functions-------------------

  Future<void> _emailSignInHandler(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {}

   Future<void> _emailSignUpHandler(
    SignUpEvent event,
    Emitter<AuthState> emit,
  ) async {
    log(event.email);
  }
}

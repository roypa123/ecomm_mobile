

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc()  :
        super(const AuthInitial()) {
    on<AuthEvent>((event, emit) {
      emit(const AuthLoading());
    });
    on<SignInEvent>(_emailSignInHandler);

  }

  

  //---------Functions-------------------

  Future<void> _emailSignInHandler(
    SignInEvent event,
    Emitter<AuthState> emit,
  ) async {
    // emailLoginLoader = LoaderState.loading;
    // emit(SignedIn(loaderState: emailLoginLoader, isFormValid: isFormValid));
    // final result = await _emailSignIn(
    //     EmailSignInParams(email: event.email, password: event.password));
    // await result.fold(
    //   (failure) {
    //     emailLoginLoader = LoaderState.error;
    //     emit(SignedIn(
    //         loaderState: emailLoginLoader,
    //         message: failure.errorMessage,
    //         isFormValid: isFormValid));
    //   },
    //   (user) async {
    //     try {
    //       if (user.status == true) {
    //         if (user.results!.user != null) {
    //           await saveUserData(user.results!.user!.toUserDetails());
    //         }

    //         if (user.results!.activeProfile != null) {
    //           await saveActiveProfileData(
    //               user.results!.activeProfile!.toActiveProfileDetails());
    //         }

    //         emailLoginLoader = LoaderState.loaded;

    //         emit(SignedIn(
    //             loaderState: emailLoginLoader, isFormValid: isFormValid));
    //       } else {
    //         emailLoginLoader = LoaderState.error;
    //         emit(SignedIn(
    //             loaderState: emailLoginLoader, isFormValid: isFormValid));
    //       }
    //     } catch (e) {
    //       if (!emit.isDone) {
    //         emailLoginLoader = LoaderState.error;
    //         emit(SignedIn(
    //             loaderState: emailLoginLoader, isFormValid: isFormValid));
    //       }
    //     }
    //   },
    // );
  }
}

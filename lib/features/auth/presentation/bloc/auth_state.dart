part of 'auth_bloc.dart';


abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {
  const AuthInitial();
}

class AuthLoading extends AuthState {
  const AuthLoading();
}

class SignedIn extends AuthState {
  const SignedIn({required this.loaderState, required this.isFormValid, this.message});
  final LoaderState loaderState;
  final bool isFormValid;
  final String? message;

  @override
  List<Object> get props => [loaderState, isFormValid];
}

class SignUpNavigate extends AuthState {}

class LogInNavigate extends AuthState {}

class AuthError extends AuthState {
  const AuthError(this.message);

  final String message;

  @override
  List<String> get props => [message];
}
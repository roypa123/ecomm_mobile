part of 'auth_bloc.dart';

abstract class AuthEvent extends Equatable {
  const AuthEvent();
}

class SignInEvent extends AuthEvent {
  const SignInEvent({
    required this.email,
    required this.password,
  });

  final String email;
  final String password;

  @override
  List<String> get props => [email, password];
}

class SignUpEvent extends AuthEvent {
  const SignUpEvent({
    required this.fullName,
    required this.email,
    required this.password,
    
  });

  final String email;
  final String password;
  final String fullName;

  @override
  List<String> get props => [email, password, fullName];
}
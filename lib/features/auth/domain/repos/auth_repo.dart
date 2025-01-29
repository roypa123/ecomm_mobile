import '../../../../core/core.dart';
import '../entities/user.dart';

abstract class AuthRepo {
  const AuthRepo();

  // ResultFuture<void> forgotPassword(String email);

  ResultFuture<void> signIn({
    required String email,
    required String password,
  });

  ResultFuture<void> signUp({
    required String email,
    required String fullName,
    required String password,
  });

  
  

}
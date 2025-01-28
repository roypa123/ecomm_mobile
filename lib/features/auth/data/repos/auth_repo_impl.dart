// import 'package:either_dart/either.dart';
// import '../../../../core/core.dart';
// import '../../domain/entities/user.dart';
// import '../../domain/repos/auth_repo.dart';

// class AuthRepoImpl implements AuthRepo {
//   const AuthRepoImpl(this._remoteDataSource);

//   //final AuthRemoteDataSource _remoteDataSource;

//   @override
//   ResultFuture<void> forgotPassword(String email) async {
//     try {
//       await _remoteDataSource.forgotPassword(email);
//       return const Right(null);
//     } on ServerException catch (e) {
//       return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
//     }
//   }

//   @override
//   ResultFuture<LocalUser> signIn({
//     required String email,
//     required String password,
//   }) async {
//     try {
//       final result = await _remoteDataSource.signIn(
//         email: email,
//         password: password,
//       );

//       return Right(result);
//     } on ServerException catch (e) {
//       return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
//     }
//   }

//   @override
//   ResultFuture<void> signUp({
//     required String email,
//     required String fullName,
//     required String password,
//   }) async {
//     try {
//       await _remoteDataSource.signUp(
//         email: email,
//         fullName: fullName,
//         password: password,
//       );
//       return const Right(null);
//     } on ServerException catch (e) {
//       return Left(ServerFailure(message: e.message, statusCode: e.statusCode));
//     }
//   }

  
// }
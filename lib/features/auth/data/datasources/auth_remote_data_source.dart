// import 'dart:convert';
// import 'dart:io';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:education_app/core/enums/update_user.dart';
// import 'package:education_app/core/errors/exceptions.dart';
// import 'package:education_app/core/utils/constants.dart';
// import 'package:education_app/core/utils/typedefs.dart';
// import 'package:education_app/src/auth/data/models/user_model.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:flutter/widgets.dart';

// import '../models/user_model.dart';

// abstract class AuthRemoteDataSource {
//   const AuthRemoteDataSource();

//   Future<void> forgotPassword(String email);

//   Future<LocalUserModel> signIn({
//     required String email,
//     required String password,
//   });

//   Future<void> signUp({
//     required String email,
//     required String fullName,
//     required String password,
//   });

//   Future<void> updateUser({
//     required UpdateUserAction action,
//     dynamic userData,
//   });
// }

// class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
//   const AuthRemoteDataSourceImpl({
//     required FirebaseAuth authClient,
//     required FirebaseFirestore cloudStoreClient,
//     required FirebaseStorage dbClient,
//   })  : _authClient = authClient,
//         _cloudStoreClient = cloudStoreClient,
//         _dbClient = dbClient;

//   final FirebaseAuth _authClient;
//   final FirebaseFirestore _cloudStoreClient;
//   final FirebaseStorage _dbClient;

//   @override
//   Future<void> forgotPassword(String email) async {
//     // try {
//     //   await _authClient.sendPasswordResetEmail(email: email);
//     // } on FirebaseAuthException catch (e) {
//     //   throw ServerException(
//     //     message: e.message ?? 'Error Occurred',
//     //     statusCode: e.code,
//     //   );
//     // } catch (e, s) {
//     //   debugPrintStack(stackTrace: s);
//     //   throw ServerException(
//     //     message: e.toString(),
//     //     statusCode: '505',
//     //   );
//     // }
//   }

//   @override
//   Future<LocalUserModel> signIn({
//     required String email,
//     required String password,
//   }) async {
//     // try {
//     //   final result = await _authClient.signInWithEmailAndPassword(
//     //     email: email,
//     //     password: password,
//     //   );

//     //   final user = result.user;

//     //   if (user == null) {
//     //     throw const ServerException(
//     //       message: 'Please try again later',
//     //       statusCode: 'Unknown Error',
//     //     );
//     //   }
//     //   var userData = await _getUserData(user.uid);

//     //   if (userData.exists) {
//     //     return LocalUserModel.fromMap(userData.data()!);
//     //   }

//     //   // upload the user
//     //   await _setUserData(user, email);

//     //   userData = await _getUserData(user.uid);
//     //   return LocalUserModel.fromMap(userData.data()!);
//     // } on FirebaseAuthException catch (e) {
//     //   throw ServerException(
//     //     message: e.message ?? 'Error Occurred',
//     //     statusCode: e.code,
//     //   );
//     // } on ServerException {
//     //   rethrow;
//     // } catch (e, s) {
//     //   debugPrintStack(stackTrace: s);
//     //   throw ServerException(
//     //     message: e.toString(),
//     //     statusCode: '505',
//     //   );
//     // }
//   }

//   @override
//   Future<void> signUp({
//     required String email,
//     required String fullName,
//     required String password,
//   }) async {
//     try {
//       final userCred = await _authClient.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

//       await userCred.user?.updateDisplayName(fullName);
//       await userCred.user?.updatePhotoURL(kDefaultAvatar);
//       await _setUserData(_authClient.currentUser!, email);
//     } on FirebaseAuthException catch (e) {
//       throw ServerException(
//         message: e.message ?? 'Error Occurred',
//         statusCode: e.code,
//       );
//     } catch (e, s) {
//       debugPrintStack(stackTrace: s);
//       throw ServerException(
//         message: e.toString(),
//         statusCode: '505',
//       );
//     }
//   }

// }


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';




abstract class AuthRemoteDataSource {
  const AuthRemoteDataSource();

  // Future<void> forgotPassword(String email);

  // Future<LocalUserModel> signIn({
  //   required String email,
  //   required String password,
  // });

  Future<void> signUp({
    required String email,
    required String fullName,
    required String password,
  });


}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  const AuthRemoteDataSourceImpl({
    required FirebaseAuth authClient,
    required FirebaseFirestore cloudStoreClient,
    required FirebaseStorage dbClient,
  })  : _authClient = authClient,
        _cloudStoreClient = cloudStoreClient,
        _dbClient = dbClient;

  final FirebaseAuth _authClient;
  final FirebaseFirestore _cloudStoreClient;
  final FirebaseStorage _dbClient;

  
 

  @override
  Future<void> signUp({
    required String email,
    required String fullName,
    required String password,
  }) async {
    // try {
    //   final userCred = await _authClient.createUserWithEmailAndPassword(
    //     email: email,
    //     password: password,
    //   );

    //   await userCred.user?.updateDisplayName(fullName);
    //   await userCred.user?.updatePhotoURL(kDefaultAvatar);
    //   await _setUserData(_authClient.currentUser!, email);
    // } on FirebaseAuthException catch (e) {
    //   throw ServerException(
    //     message: e.message ?? 'Error Occurred',
    //     statusCode: e.code,
    //   );
    // } catch (e, s) {
    //   debugPrintStack(stackTrace: s);
    //   throw ServerException(
    //     message: e.toString(),
    //     statusCode: '505',
    //   );
    // }
  }

}
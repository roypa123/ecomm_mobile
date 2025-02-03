import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';

import '../models/category_model.dart';
import '../models/sub_category_model.dart';
import '../models/type_model.dart';

abstract class AddCategoriesRemoteDataSource {
  const AddCategoriesRemoteDataSource();

  Future<String> createCategories(CategoryModel category);
  Future<String> createSubcategories(
      CategoryModel category, SubcategoryModel subcategory);
  Future<String> createTypes(
      CategoryModel category, SubcategoryModel subcategory, TypeModel types);
}

class AddCategoresRemoteDataSourceImpl
    implements AddCategoriesRemoteDataSource {
  const AddCategoresRemoteDataSourceImpl({
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
  Future<String> createCategories(category) async {
    log("sdsd");
    DocumentReference docRef =
        await _cloudStoreClient.collection('categories').add({
      'name': category.name,
    });
    return docRef.id;
  }

  @override
  Future<String> createSubcategories(
      CategoryModel category, SubcategoryModel subcategory) async {
    DocumentReference docRef = await _cloudStoreClient
        .collection('categories')
        .doc(category.id)
        .collection('subcategories')
        .add({
      'name': subcategory.name,
    });
    return docRef.id;
  }

  @override
  Future<String> createTypes(CategoryModel category,
      SubcategoryModel subcategory, TypeModel types) async {
    DocumentReference docRef = await _cloudStoreClient
        .collection('categories')
        .doc(category.id)
        .collection('subcategories')
        .doc(subcategory.id)
        .collection('types')
        .add({
      'name': types.name,
    });
    return docRef.id;
  }
}

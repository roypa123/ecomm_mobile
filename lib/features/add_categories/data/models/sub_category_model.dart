import 'package:ecomm_mobile/features/add_categories/domain/entities/sub_category_entitiles.dart';

class SubcategoryModel extends SubcategoryEntities {
  SubcategoryModel({required String id, required String name}) : super(id: id, name: name);

  factory SubcategoryModel.fromJson(Map<String, dynamic> json, String id) {
    return SubcategoryModel(id: id, name: json['name']);
  }
}
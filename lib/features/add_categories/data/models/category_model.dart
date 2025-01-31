import 'package:ecomm_mobile/features/add_categories/domain/entities/category_entities.dart';

class CategoryModel extends CategoryEntities {
  CategoryModel({required String id, required String name}) : super(id: id, name: name);

  factory CategoryModel.fromJson(Map<String, dynamic> json, String id) {
    return CategoryModel(id: id, name: json['name']);
  }
}
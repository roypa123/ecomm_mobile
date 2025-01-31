import 'package:ecomm_mobile/features/add_categories/domain/entities/type_entitiies.dart';

class TypeModel extends TypeEntitiies {
  TypeModel({required String id, required String name}) : super(id: id, name: name);

  factory TypeModel.fromJson(Map<String, dynamic> json, String id) {
    return TypeModel(id: id, name: json['name']);
  }
}
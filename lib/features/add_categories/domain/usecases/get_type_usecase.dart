import 'package:ecomm_mobile/features/add_categories/domain/entities/type_entitiies.dart';

import '../repos/add_categories_repo.dart';

class GetTypes {
  final AddCategoriesRepo repository;

  GetTypes(this.repository);

  Future<List<TypeEntitiies>> call(String categoryId, String subcategoryId) async {
    return await repository.fetchTypes(categoryId, subcategoryId);
  }
}
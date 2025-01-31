import 'package:ecomm_mobile/features/add_categories/domain/entities/sub_category_entitiles.dart';
import 'package:ecomm_mobile/features/add_categories/domain/entities/type_entitiies.dart';

import '../entities/category_entities.dart';

abstract class AddCategoriesRepo {
  const AddCategoriesRepo();

  Future<List<CategoryEntities>> fetchCategories();
  Future<List<SubcategoryEntities>> fetchSubcategories(String categoryId);
  Future<List<TypeEntitiies>> fetchTypes(
      String categoryId, String subcategoryId);
}

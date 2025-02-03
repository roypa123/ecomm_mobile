import '../entities/category_entities.dart';
import '../entities/sub_category_entitiles.dart';
import '../entities/type_entitiies.dart';

abstract class AddCategoriesRepo {
  const AddCategoriesRepo();

  Future<String> createCategories(CategoryEntities categories);
  Future<String> createSubcategories(
    CategoryEntities categories,
    SubcategoryEntities subcategories,
  );
  Future<String> createTypes(
    CategoryEntities categories,
    SubcategoryEntities subcategories,
    TypeEntitiies types,
  );
}

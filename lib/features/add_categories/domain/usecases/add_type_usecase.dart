import '../entities/category_entities.dart';
import '../entities/sub_category_entitiles.dart';
import '../entities/type_entitiies.dart';
import '../repos/add_categories_repo.dart';

class AddTypesUseCase {
  final AddCategoriesRepo repository;

  AddTypesUseCase(this.repository);

  Future<String> call(
      {required CategoryEntities category,
      required SubcategoryEntities subCategories,
      required TypeEntitiies type}) async {
    return await repository.createTypes(category, subCategories, type);
  }
}

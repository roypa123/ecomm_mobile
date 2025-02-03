import '../entities/category_entities.dart';
import '../entities/sub_category_entitiles.dart';
import '../repos/add_categories_repo.dart';

class AddSubcategoryUsecase {
  final AddCategoriesRepo repository;

  AddSubcategoryUsecase(this.repository);

  Future<String> call(
      {required CategoryEntities category,
      required SubcategoryEntities subCategories}) async {
    return await repository.createSubcategories(
      category,
      subCategories,
    );
  }
}

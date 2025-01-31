import 'package:ecomm_mobile/features/add_categories/domain/entities/sub_category_entitiles.dart';
import '../repos/add_categories_repo.dart';

class GetSubcategories {
  final AddCategoriesRepo repository;

  GetSubcategories(this.repository);

  Future<List<SubcategoryEntities>> call(String categoryId) async {
    return await repository.fetchSubcategories(categoryId);
  }
}
import 'package:ecomm_mobile/features/add_categories/domain/entities/category_entities.dart';

import '../repos/add_categories_repo.dart';

class GetCategoriesUseCase {
  final AddCategoriesRepo repository;

  GetCategoriesUseCase(this.repository);

  Future<List<CategoryEntities>> call() async {
    return await repository.fetchCategories();
  }
}
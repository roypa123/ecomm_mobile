import 'package:ecomm_mobile/features/add_categories/domain/entities/category_entities.dart';

import '../repos/add_categories_repo.dart';

class AddCategoriesUseCase {
  final AddCategoriesRepo repository;

  AddCategoriesUseCase(this.repository);

  Future<String> call({required CategoryEntities categories}) async {
    return await repository.createCategories(categories);
  }
}
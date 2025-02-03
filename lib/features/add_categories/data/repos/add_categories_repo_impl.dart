import 'package:ecomm_mobile/features/add_categories/data/models/category_model.dart';

import '../../domain/entities/category_entities.dart';
import '../../domain/entities/sub_category_entitiles.dart';
import '../../domain/entities/type_entitiies.dart';
import '../../domain/repos/add_categories_repo.dart';
import '../datasources/add_categores_remote_data_source.dart';
import '../models/sub_category_model.dart';
import '../models/type_model.dart';

class AddCategoriesRepoImpl implements AddCategoriesRepo {
  const AddCategoriesRepoImpl(this._remoteDataSource);

  final AddCategoriesRemoteDataSource _remoteDataSource;

  @override
  Future<String> createCategories(CategoryEntities category) async {
    return await _remoteDataSource.createCategories(
      CategoryModel(
        id: category.id,
        name: category.name,
      ),
    );
  }

  @override
  Future<String> createSubcategories(
      CategoryEntities category, SubcategoryEntities subCategory) async {
    return await _remoteDataSource.createSubcategories(
      CategoryModel(
        id: category.id,
        name: category.name,
      ),
      SubcategoryModel(
        id: subCategory.id,
        name: subCategory.name,
      ),
    );
  }

  @override
  Future<String> createTypes(CategoryEntities category,
      SubcategoryEntities subCategory, TypeEntitiies type) async {
    return await _remoteDataSource.createTypes(
      CategoryModel(
        id: category.id,
        name: category.name,
      ),
      SubcategoryModel(
        id: subCategory.id,
        name: subCategory.name,
      ),
      TypeModel(
        id: type.id,
        name: type.name,
      ),
    );
  }
}

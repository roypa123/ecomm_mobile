import '../../domain/repos/add_categories_repo.dart';
import '../datasources/add_categores_remote_data_source.dart';
import '../models/category_model.dart';
import '../models/sub_category_model.dart';
import '../models/type_model.dart';

class AddCategoriesRepoImpl implements AddCategoriesRepo {
  const AddCategoriesRepoImpl(this._remoteDataSource);

  final AddCategoriesRemoteDataSource _remoteDataSource;

  @override
  Future<List<CategoryModel>> fetchCategories() async {
    return await _remoteDataSource.fetchCategories();
  }

  @override
  Future<List<SubcategoryModel>> fetchSubcategories(String categoryId) async {
    return await _remoteDataSource.fetchSubcategories(categoryId);
  }

  @override
  Future<List<TypeModel>> fetchTypes(
      String categoryId, String subcategoryId) async {
    return await _remoteDataSource.fetchTypes(categoryId, subcategoryId);
  }
}

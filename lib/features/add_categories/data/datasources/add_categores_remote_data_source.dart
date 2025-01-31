import '../models/category_model.dart';
import '../models/sub_category_model.dart';
import '../models/type_model.dart';

abstract class AddCategoriesRemoteDataSource {
  const AddCategoriesRemoteDataSource();

  Future<List<CategoryModel>> fetchCategories();
  Future<List<SubcategoryModel>> fetchSubcategories(String categoryId);
  Future<List<TypeModel>> fetchTypes(String categoryId, String subcategoryId);
}


class AddCategoresRemoteDataSourceImpl implements AddCategoriesRemoteDataSource{
  @override
  Future<List<CategoryModel>> fetchCategories() {
    // TODO: implement fetchCategories
    throw UnimplementedError();
  }

  @override
  Future<List<SubcategoryModel>> fetchSubcategories(String categoryId) {
    // TODO: implement fetchSubcategories
    throw UnimplementedError();
  }

  @override
  Future<List<TypeModel>> fetchTypes(String categoryId, String subcategoryId) {
    // TODO: implement fetchTypes
    throw UnimplementedError();
  }
 
  
  
}

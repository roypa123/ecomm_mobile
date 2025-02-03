import 'package:bloc/bloc.dart';
import 'package:ecomm_mobile/features/add_categories/domain/entities/category_entities.dart';
import 'package:ecomm_mobile/features/add_categories/domain/entities/type_entitiies.dart';
import 'package:equatable/equatable.dart';
import '../../domain/entities/sub_category_entitiles.dart';
import '../../domain/usecases/add_category_usecase.dart';
import '../../domain/usecases/add_subcategory_usecase.dart';
import '../../domain/usecases/add_type_usecase.dart';

part 'add_categories_event.dart';
part 'add_categories_state.dart';

class AddCategoriesBloc extends Bloc<AddCategoriesEvent, AddCategoriesState> {
  AddCategoriesBloc(
      {required AddCategoriesUseCase addCategoryUsecase,
      required AddSubcategoryUsecase addSubCategoryUsecase,
      required AddTypesUseCase addTypeUsecase})
      : _addCategoryUsecase = addCategoryUsecase,
        _addSubCategoryUsecase = addSubCategoryUsecase,
        _addTypeUsecase = addTypeUsecase,
        super(const AddCategoriesInitial()) {
    on<AddItemsEvent>(_emailSignInHandler);
  }

  final AddCategoriesUseCase _addCategoryUsecase;
  final AddSubcategoryUsecase _addSubCategoryUsecase;
  final AddTypesUseCase _addTypeUsecase;

  //---------Functions-------------------

  Future<void> _emailSignInHandler(
    AddItemsEvent event,
    Emitter<AddCategoriesState> emit,
  ) async {
    try {
      String categoryId = await _addCategoryUsecase(
        categories: CategoryEntities(
          id: '',
          name: event.category,
        ),
      );

      String subcategoryId = await _addSubCategoryUsecase(
          category: CategoryEntities(id: categoryId, name: event.category),
          subCategories: SubcategoryEntities(id: '', name: event.subCategory));

      String typeId = await _addTypeUsecase(
          category: CategoryEntities(id: categoryId, name: event.category),
          subCategories:
              SubcategoryEntities(id: subcategoryId, name: event.subCategory),
          type: TypeEntitiies(id: '', name: event.type));

          
    } catch (e) {}
  }
}

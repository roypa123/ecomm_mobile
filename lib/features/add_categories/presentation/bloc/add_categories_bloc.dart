import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'add_categories_event.dart';
part 'add_categories_state.dart';

class AddCategoriesBloc extends Bloc<AddCategoriesEvent, AddCategoriesState> {
  AddCategoriesBloc()
      : 
        super(const AddCategoriesInitial()) {
    on<AddItemsEvent>(_emailSignInHandler);
  }



  //---------Functions-------------------

  Future<void> _emailSignInHandler(
    AddItemsEvent event,
    Emitter<AddCategoriesState> emit,
  ) async {
    try {
      // String categoryId = await _addCategoryUsecase(
      //   categories: CategoryEntities(
      //     id: '',
      //     name: event.category,
      //   ),
      // );

      // String subcategoryId = await _addSubCategoryUsecase(
      //     category: CategoryEntities(id: categoryId, name: event.category),
      //     subCategories: SubcategoryEntities(id: '', name: event.subCategory));

      // String typeId = await _addTypeUsecase(
      //     category: CategoryEntities(id: categoryId, name: event.category),
      //     subCategories:
      //         SubcategoryEntities(id: subcategoryId, name: event.subCategory),
      //     type: TypeEntitiies(id: '', name: event.type));

          
    } catch (e) {}
  }
}

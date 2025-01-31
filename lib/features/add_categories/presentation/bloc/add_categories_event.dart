part of 'add_categories_bloc.dart';

abstract class AddCategoriesEvent extends Equatable {
  const AddCategoriesEvent();
}

class AddItemsEvent extends AddCategoriesEvent {
  const AddItemsEvent({
    required this.category,
    required this.subCategory,
    required this.type
  });

  final String category;
  final String subCategory;
  final String type;

  @override
  List<String> get props => [category, subCategory,type];
}


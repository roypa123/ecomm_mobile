part of 'add_categories_bloc.dart';

abstract class AddCategoriesState extends Equatable {
  const AddCategoriesState();

  @override
  List<Object> get props => [];
}

class AddCategoriesInitial extends AddCategoriesState {
  const AddCategoriesInitial();
}

class AddCategoriesLoading extends AddCategoriesState {
  const AddCategoriesLoading();
}

class AddCategoriesSuccessState extends AddCategoriesState {
  const AddCategoriesSuccessState();

  @override
  List<Object> get props => [];
}

class AddCategoriesError extends AddCategoriesState {
  const AddCategoriesError(this.message);

  final String message;

  @override
  List<String> get props => [message];
}

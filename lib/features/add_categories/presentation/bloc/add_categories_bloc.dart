import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'add_categories_event.dart';
part 'add_categories_state.dart';

class AddCategoriesBloc extends Bloc<AddCategoriesEvent, AddCategoriesState> {
  AddCategoriesBloc() : super(const AddCategoriesInitial()) {
    on<AddItemsEvent>(_emailSignInHandler);
  }

  //---------Functions-------------------

  Future<void> _emailSignInHandler(
    AddItemsEvent event,
    Emitter<AddCategoriesState> emit,
  ) async {
    // final result = await _signIn(
    //   SignInParams(
    //     email: event.email,
    //     password: event.password,
    //   ),
    // );
    // result.fold(
    //   (failure) => emit(AuthError(failure.errorMessage)),
    //   (user) => emit(LogInNavigate()),
    // );
  }
}

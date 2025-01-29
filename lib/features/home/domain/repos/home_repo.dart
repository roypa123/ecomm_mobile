import '../../../../core/core.dart';

abstract class HomeRepo {
  const HomeRepo();

  ResultFuture<void> getData(String email);

 
}
import 'package:ecomm_mobile/core/utils/helpers/typedefs.dart';
import '../../domain/repos/home_repo.dart';
import '../datasources/home_remote_data_source.dart';

class HomeRepoImpl implements HomeRepo {
  const HomeRepoImpl(this._remoteDataSource);

  final HomeRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<void> getData(String email) {
    throw UnimplementedError();
  }
}

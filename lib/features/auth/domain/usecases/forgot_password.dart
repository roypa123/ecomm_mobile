import '../../../../core/core.dart';
import '../repos/auth_repo.dart';

class ForgotPassword extends FutureUsecaseWithParams<void, String> {
  const ForgotPassword(this._repo);

  final AuthRepo _repo;

  @override
  ResultFuture<void> call(String params) => _repo.forgotPassword(params);
}

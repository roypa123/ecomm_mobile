import 'package:either_dart/either.dart';
import '../../error/failures.dart';


typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef DataMap = Map<String, dynamic>;

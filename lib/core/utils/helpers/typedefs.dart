import 'package:either_dart/either.dart';
import 'package:stoblo/core/error/failures.dart';

typedef ResultFuture<T> = Future<Either<Failure, T>>;
typedef DataMap = Map<String, dynamic>;

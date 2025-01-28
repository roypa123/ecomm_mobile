import 'package:equatable/equatable.dart';
import '../../configs/enums/api_enums.dart';

class ServerException extends Equatable implements Exception {
  const ServerException({
    this.key,
    this.message,
    this.statusCode,
    this.response,
  });

  final ApiErrorTypes? key;
  final String? message;
  final int? statusCode;
  final dynamic response;

  @override
  String toString() {
    return "$message";
  }

  @override
  List<Object?> get props => [key, message, statusCode, response];
}

class UnAuthorizedException extends ServerException {
  const UnAuthorizedException(
      {super.key, super.message, super.statusCode, super.response});
}

class BadRequestException extends ServerException {
  const BadRequestException(
      {super.key, super.message, super.statusCode, super.response});
}

class NotFoundException extends ServerException {
  const NotFoundException(
      {super.key, super.message, super.statusCode, super.response});
}

class InternalServerErrorException extends ServerException {
  const InternalServerErrorException(
      {super.key, super.message, super.statusCode, super.response});
}

class ServiceUnavailableException extends ServerException {
  const ServiceUnavailableException(
      {super.key, super.message, super.statusCode, super.response});
}

class UnknownException extends ServerException {
  const UnknownException(
      {super.key, super.message, super.statusCode, super.response});
}

class NoInternetException extends ServerException {
  const NoInternetException(
      {super.key, super.message, super.statusCode, super.response});
}

class JsonParsingException extends ServerException {
  const JsonParsingException(
      {super.key, super.message, super.statusCode, super.response});
}

class OopsException extends ServerException {
  const OopsException(
      {super.key, super.message, super.statusCode, super.response});
}

class ConnectionTimeOutException extends ServerException {
  const ConnectionTimeOutException(
      {super.key, super.message, super.statusCode, super.response});
}

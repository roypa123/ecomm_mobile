import 'package:equatable/equatable.dart';

import 'exceptions/server_exception.dart';


abstract class Failure extends Equatable {
  const Failure(
      {required this.message, required this.statusCode, this.response});

  final String message;
  final dynamic statusCode;
  final dynamic response;

  String get errorMessage {
    var messageResponse = "";
    if (response != null) {
      if (response['message'] != null) {
        messageResponse = response['message'];
      }
    } else {
      messageResponse = message;
    }

    return messageResponse;
  }

  @override
  List<dynamic> get props => [message, statusCode, response];
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message, required super.statusCode});
}

class ServerFailure extends Failure {
  const ServerFailure(
      {required super.message, required super.statusCode, super.response});

  ServerFailure.fromException(ServerException exception)
      : this(
            message: exception.message ?? "",
            statusCode: exception.statusCode,
            response: exception.response);
}

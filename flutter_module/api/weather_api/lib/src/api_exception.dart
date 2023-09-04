import 'package:equatable/equatable.dart';

class HttpError implements Exception, Equatable {
  final int statusCode;
  final String message;

  const HttpError(this.statusCode, this.message);

  @override
  String toString() {
    return 'HttpError{statusCode: $statusCode, message: $message}';
  }

  @override
  List<Object?> get props => [statusCode];

  @override
  bool? get stringify => true;
}

class HttpNotFoundError extends HttpError {
  const HttpNotFoundError(String message) : super(404, message);
}

class HttpBadRequestError extends HttpError {
  const HttpBadRequestError(String message) : super(400, message);
}

class HttpInternalServerError extends HttpError {
  const HttpInternalServerError(String message) : super(500, message);
}

class HttpUnauthorizedError extends HttpError {
  const HttpUnauthorizedError(String message) : super(401, message);
}

class HttpError extends Error {
  final int? statusCode;
  final String? message;

  HttpError({
    this.statusCode,
    this.message,
  });

  @override
  String toString() {
    return 'HttpError{statusCode: $statusCode, message: $message}';
  }
}

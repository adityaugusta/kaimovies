import 'dart:io';

class RepositoryException implements IOException {
  RepositoryException(
      this.message,
      this.stackTrace, {
        this.errorCode,
        String? userMessage,
      }) : userMessage = userMessage ?? 'Oops somethings went wrong';

  final String message;
  final StackTrace stackTrace;
  final int? errorCode;
  final String userMessage;

  @override
  String toString() => 'RepositoryException: $message, errorCode : $errorCode';
}

class InvalidJsonException extends RepositoryException {
  InvalidJsonException(
      String message,
      StackTrace stackTrace,
      ) : super(
    message,
    stackTrace,
    userMessage: 'Oops somethings went wrong',
  );
}

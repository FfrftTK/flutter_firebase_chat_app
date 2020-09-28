import 'app_exceptions.dart';

class ServerException extends AppException {
  ServerException(AppError error) : super(error);
}

class BadRequestException extends AppException {
  BadRequestException(AppError error) : super(error);
}

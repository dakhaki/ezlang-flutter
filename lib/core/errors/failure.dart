// import 'package:dio/dio.dart';

sealed class Failure {
  final String message;

  Failure(this.message);
}

// class ApiFailure extends Failure {
//   ApiFailure(super.message);

//   factory ApiFailure.fromDioException(DioException e) {
//     return ApiFailure(e.message ?? 'Something went wrong');
//   }
// }

class CacheFailure extends Failure {
  CacheFailure(super.message);
}

class ConnectionFailure extends Failure {
  ConnectionFailure() : super('No internet connection');
}

class JsonFailure extends Failure {
  JsonFailure() : super('Failed to load or parse JSON');
}

import 'package:dio/dio.dart';

class ApiRequest {
  final String basePath = 'https://api.covid19api.com';
  final String path;
  ApiRequest({
    required this.path,
  });

  Dio _dio() {
    return Dio(BaseOptions(headers: {
      'Content-Type': 'application/json',
    }));
  }

  void get({
    Function()? beforeSend,
    Function(dynamic data)? onSuccess,
    Function(dynamic error)? onError,
  }) async {
    await _dio().get('$basePath/$path').then(
      (res) {
        if (onSuccess != null) onSuccess(res.data);
      },
    ).catchError((error) {
      if (onError != null) onError(error);
    });
  }
}

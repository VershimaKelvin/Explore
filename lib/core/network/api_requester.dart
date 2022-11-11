import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:untitled4/core/constants/network_client.dart';

@lazySingleton
class ApiRequester {
  ApiRequester({
    required this.dio,
  });
  final Dio dio;


  Future<Response> getRequest({
    bool cacheRequest = false,
  }) async {
    final response = dio.get(
      BASE_URL,
      options: Options(),
    );
    return response;
  }

}

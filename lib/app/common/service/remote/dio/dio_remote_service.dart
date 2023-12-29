import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class DioRemoteService {
  late final Dio dio;
  DioRemoteService() {
    dio = Dio(
      BaseOptions(
          connectTimeout: const Duration(seconds: 10),
          //baseUrl: 'https://athletichub.onrender.com'
          ),
    );
  }
}

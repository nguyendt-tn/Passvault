import 'package:dio/dio.dart';

class BaseClient {
  static String baseUrl = '';

  static BaseOptions opts = BaseOptions(
    baseUrl: baseUrl,
    responseType: ResponseType.json,
    connectTimeout: const Duration(milliseconds: 15000),
    receiveTimeout: const Duration(milliseconds: 15000),
  );

  static Dio createDio() {
    return Dio(opts);
  }

  static Dio addInterceptors(Dio dio) {
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        options = await requestInterceptor(options);
        return handler.next(options);
      },
      onResponse: (response, handler) {
        return handler.next(response);
      },
      onError: (error, handler) async {
        if (error.response != null) {
          if (error.response!.statusCode == 401) {}
        }
        return handler.next(error);
      },
    ));
    return dio;
  }

  static dynamic requestInterceptor(RequestOptions options) async {
    const token = '';
    options.headers.addAll({"Authorization": "Bearer: $token"});
    return options;
  }

  static final dio = createDio();
  static final baseAPI = addInterceptors(dio);

  Future<dynamic> get(String url) async {
    try {
      Response<dynamic>? response = await baseAPI.get(url);
      return response.data;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> post(String url, dynamic data) async {
    try {
      Response<dynamic>? response = await baseAPI.post(url, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> put(String url, dynamic data) async {
    try {
      Response response = await baseAPI.put(url, data: data);
      return response;
    } catch (e) {
      rethrow;
    }
  }

  Future<dynamic> delete(String url) async {
    try {
      Response response = await baseAPI.delete(url);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}

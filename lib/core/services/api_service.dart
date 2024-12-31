import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class ApiService {
  late Dio _dio;

  ApiService() {
    // Configure Dio with base options
    BaseOptions options = BaseOptions(
      baseUrl: 'https://api.themoviedb.org/',
      connectTimeout: const Duration(minutes: 1),
      receiveTimeout: const Duration(minutes: 1),
      headers: {
        'Content-Type': 'application/json',
      },
    );

    _dio = Dio(options);

    // Add PrettyDioLogger for logging requests and responses
    _dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseHeader: true,
      responseBody: true,
      error: true,
      compact: false, // Set to true for a more compact log
    ));

    // Optional: Add interceptors for token management
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {
          // Add auth token to headers if available
          options.headers['Authorization'] = 'Bearer YOUR_ACCESS_TOKEN';
          return handler.next(options);
        },
        onResponse: (response, handler) {
          // Log or handle response
          return handler.next(response);
        },
        onError: (DioException error, handler) {
          // Handle errors like token expiration, connectivity issues, etc.
          if (error.response?.statusCode == 401) {
            // Handle token expiration or refresh
          }
          return handler.next(error);
        },
      ),
    );
  }

  // Example GET Request
  Future<Response> getRequest(String endpoint,
      {Map<String, dynamic>? queryParams}) async {
    print(endpoint);
    try {
      Response response =
          await _dio.get(endpoint, queryParameters: queryParams);
      return response;
    } on DioException catch (e) {
      print('GET request failed: ${e.message}');
      throw e.response?.data ?? 'An error occurred';
    }
  }

  // Example POST Request
  Future<Response> postRaw(String endpoint, Map<String, dynamic> data) async {
    try {
      Response response = await _dio.post(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      print('POST request failed: ${e.message}');
      throw e.response?.data ?? 'An error occurred';
    }
  }

  Future<Response> post(String endpoint, Map<String, dynamic> data) async {
    try {
      // Convert data to FormData
      FormData formData = FormData.fromMap(data);

      // Send POST request with FormData
      Response response = await _dio.post(endpoint, data: formData);
      return response;
    } on DioException catch (e) {
      print('POST request failed: ${e.message}');
      throw e.response?.data ?? 'An error occurred';
    }
  }

  // File Upload with Dio
  Future<Response> uploadFile(String endpoint, String filePath,
      {Map<String, dynamic>? additionalData}) async {
    try {
      // Creating multipart file
      MultipartFile file = await MultipartFile.fromFile(filePath,
          filename: filePath.split('/').last);

      // Form data
      FormData formData = FormData.fromMap(
        {
          'file': file,
          ...?additionalData, // Merging additional form data if provided
        },
      );

      Response response = await _dio.post(endpoint, data: formData);
      return response;
    } on DioException catch (e) {
      print('File upload failed: ${e.message}');
      throw e.response?.data ?? 'File upload failed';
    }
  }
}

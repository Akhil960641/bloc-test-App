import 'dart:convert';

class ApiResponse<T> {
  bool success;
  String message;
  T data;

  ApiResponse(
      {required this.success, required this.message, required this.data});

  factory ApiResponse.fromJson(int status, String body) {
    final map = json.decode(body);
    return ApiResponse<T>(
      success: status == 200,
      message: map["message"] ?? "",
      data: map["data"],
    );
  }
}

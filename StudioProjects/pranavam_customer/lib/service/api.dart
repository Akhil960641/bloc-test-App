import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../helpers/helpersSnackbar.dart';
import '../helpers/helpers_loader.dart';
import 'api_response.dart';

enum Method { get, post, put, delete, postForm }

class Api {
  static final Map<String, String> _headers = {
    'Content-Type': 'application/json',
  };

  static Future<dynamic> call(
    BuildContext context, {
      required String baseUrl1,
        required String endPoint,
        required Method method,
        Object? body,
        Map<String, String>? header,
  }) async {
    try {
      final http.Response response;

      //REST API METHOD
      switch (method) {
        case Method.get:
          String url = baseUrl1 + endPoint;
          header != null ? _headers.addAll(header) : null;
          debugPrint(_headers.toString());
          response = await http.get(Uri.parse(url), headers: _headers);
          log("${baseUrl1 + endPoint} ($method)\n$body");
          log(response.body);
          return ApiResponse.fromJson(response.statusCode, response.body);

        case Method.post:
          header != null ? _headers.addAll(header) : null;
          response = await http.post(Uri.parse(baseUrl1 + endPoint),
              body: json.encode(body), headers: _headers);
          log("${baseUrl1 + endPoint} ($method)\n$body");
          log(response.body);
          log(response.statusCode.toString());
          // return ApiResponse.fromJson(response.statusCode, response.body);
          return jsonDecode(
            response.body,
          );
        case Method.put:
          response = await http.put(Uri.parse(baseUrl1 + endPoint),
              body: json.encode(body), headers: _headers);
          log("${baseUrl1 + endPoint} ($method)\n$body");
          log(response.body);
          return ApiResponse.fromJson(
            response.statusCode,
            response.body,
          );
        default:
          return throw "INVALID METHOD";
      }
    } on SocketException {
      log("${baseUrl1 + endPoint} ($method)\n$body");
      hideLoader(context);
      snackBar(context, message: "Network seems to be offline");
      return ApiResponse.fromJson(
          500, "{message:'Network seems to be offline'}");
    } catch (e) {
      log("${baseUrl1 + endPoint} ($method) ${body != null ? '\n$body' : ''}");
      hideLoader(context);
      snackBar(context, message: e.toString());
      debugPrint("$e");
      return ApiResponse.fromJson(500, "{message:'$e'}");
    }
  }
}

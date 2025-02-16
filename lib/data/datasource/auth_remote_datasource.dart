import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/variabels.dart';
import 'package:ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:ecommerce/data/model/request/login_request_model.dart';
import 'package:ecommerce/data/model/request/register_request_model.dart';
import 'package:ecommerce/data/model/response/login_response_model.dart';
import 'package:http/http.dart' as http;

class AuthRemoteDatasource {
  final dio = Dio();
  Future<Either<String, LoginResponseModel>> login(
      LoginRequestModel model) async {
    final response = await dio.post(
      '${Variables.baseUrl}/auth/login',
      options: Options(
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
      data: jsonEncode(model.toMap()),
    );
    log(response.data);
    if (response.statusCode == 200) {
      return Right(LoginResponseModel.fromJson(jsonDecode(response.data)));
    } else {
      return const Left('Failed to Login');
    }
  }

  Future<Either<String, String>> register(RegisterRequestModel model) async {
    final header = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    };

    // final url = Uri.parse('${Variables.baseUrl}/users');
    final response = await dio.post(
      '${Variables.baseUrl}/users',
      options: Options(
        headers: header,
      ),
      data: json.encode(model),
    );

    log("statusCode: ${response.statusCode}");
    log("body: ${response.data}");

    if (response.statusCode == 200 || response.statusCode == 201) {
      final message = jsonDecode(response.data)['message'];
      return Right(message);
    } else {
      return Left("Register Failed : ${jsonDecode(response.data)['message']}");
    }
  }
}

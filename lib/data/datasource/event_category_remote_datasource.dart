import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:ecommerce/core/constants/variabels.dart';
import 'package:ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:ecommerce/data/model/response/categori_response_model.dart';
import 'package:http/http.dart' as http;

class EventCategoryRemoteDatasource {
  final dio = Dio();

  Future<Either<String, List<String>>> getEventCategories() async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await dio.get(
      '${Variables.baseUrl}/products/categories',
      options: Options(
        headers: {
          'Content-Type': 'application/json; charset=UTF-8',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${authData.token!}',
        },
      ),
    );
    // log(response.statusCode.toString());
    // log(response.body);
    if (response.statusCode == 200) {
      List<String> categories = List<String>.from(response.data);
      return Right(categories);
    } else {
      return const Left('Failed to get events');
    }
  }
}

import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/constants/variabels.dart';
import 'package:ecommerce/data/datasource/auth_local_datasource.dart';
import 'package:ecommerce/data/model/response/product_response_model.dart';
import 'package:http/http.dart' as http;

class EventRemoteDatasource {
  Future<Either<String, List<ProductResponseModel>>> getProduct(
    String categori,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();
    List<ProductResponseModel> product = [];

    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/products/category/$categori'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token!}',
      },
    );
    log("statusCOde: ${response.statusCode}");
    log("response body: ${response.body}");
    if (response.statusCode == 200) {
      List<dynamic> decodedJson = jsonDecode(response.body);
      product = decodedJson
          .map((item) => ProductResponseModel.fromJson(item))
          .toList();
      return Right(product);
    } else {
      return const Left('Failed to get events');
    }
  }

  Future<Either<String, ProductResponseModel>> getProductById(
    String id,
  ) async {
    final authData = await AuthLocalDatasource().getAuthData();

    final response = await http.get(
      Uri.parse('${Variables.baseUrl}/products/$id'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        'Accept': 'application/json',
        'Authorization': 'Bearer ${authData.token!}',
      },
    );
    log("statusCode: ${response.statusCode}");
    log("response body: ${response.body}");
    if (response.statusCode == 200) {
      return Right(ProductResponseModel.fromJson(jsonDecode(response.body)));
    } else {
      return const Left('Failed to get events');
    }
  }
}

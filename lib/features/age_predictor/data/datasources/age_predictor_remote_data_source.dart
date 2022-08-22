import 'dart:convert';

import 'package:tdd_sampel/core/constants/api_end_point.dart';
import 'package:tdd_sampel/core/error/exception.dart';
import 'package:tdd_sampel/features/age_predictor/data/models/age_predictor_model.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';
import 'package:http/http.dart' as http;

abstract class AgePredictorRemoteDataSource {
  /// we will throws [ServerException] in case of failure
  Future<AgePredictor> getAgePredictor(String name);
}

class AgePredictorRemoteDataSourceImpl implements AgePredictorRemoteDataSource {
  AgePredictorRemoteDataSourceImpl({required this.client});
  final http.Client client;

  @override
  Future<AgePredictor> getAgePredictor(String name) async {
    final agePredictorUrl = Uri.parse("${ApiEndPoint.baseUrl}?name=$name");

    final response = await client.get(
      agePredictorUrl,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      return AgePredictorModel.fromJson(
          json.decode(response.body) as Map<String, dynamic>);
    } else {
      throw ServerException();
    }
  }
}

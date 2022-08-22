import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:mocktail/mocktail.dart';
import 'package:tdd_sampel/core/constants/api_end_point.dart';
import 'package:tdd_sampel/core/error/exception.dart';
import 'package:tdd_sampel/features/age_predictor/data/datasources/age_predictor_remote_data_source.dart';
import 'package:tdd_sampel/features/age_predictor/data/models/age_predictor_model.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockHttpClient extends Mock implements http.Client {}

void main() {
  late MockHttpClient mockHttpClient;
  late AgePredictorRemoteDataSourceImpl dataSource;

  setUp(() {
    mockHttpClient = MockHttpClient();

    dataSource = AgePredictorRemoteDataSourceImpl(client: mockHttpClient);
  });

  void setUpClientSuccess200(Uri url) {
    when(() => mockHttpClient.get(url, headers: any(named: 'headers')))
        .thenAnswer(
            (_) async => http.Response(fixture('age_predictor.json'), 200));
  }

  void setUpClientSuccess404(Uri url) {
    when(() => mockHttpClient.get(url, headers: any(named: 'headers')))
        .thenAnswer((_) async => http.Response("Something went Wrong", 404));
  }

  group("age Predictor Remote Data Source", () {
    const tname = "Amit";

    final uri = Uri.parse("${ApiEndPoint.baseUrl}?name=$tname");
    final agePredictor = AgePredictorModel.fromJson(json.decode(
      fixture('age_predictor.json'),
    ) as Map<String, dynamic>);
    test("should call get method with name endpoint", () {
// ! Arange
      setUpClientSuccess200(uri);

      // ! Act
      dataSource.getAgePredictor(tname);

// !Assert
      verify(() => mockHttpClient
          .get(uri, headers: {'Content-Type': 'application/json'}));
    });

    test(
      "Should Return AgePredictor When Status Code is 200",
      () async {
        setUpClientSuccess200(uri);

        final result = await dataSource.getAgePredictor(tname);

        expect(result, equals(agePredictor));
      },
    );

    test(
      "Should Return [ServerException] When Status Code is 404 or other",
      () async {
        setUpClientSuccess404(uri);

        final result = dataSource.getAgePredictor;

        expect(() => result(tname), throwsA(isInstanceOf<ServerException>()));
      },
    );
  });
}

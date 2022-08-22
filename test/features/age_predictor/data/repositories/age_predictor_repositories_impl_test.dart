import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_sampel/core/error/exception.dart';
import 'package:tdd_sampel/core/error/failures.dart';
import 'package:tdd_sampel/core/network/network_info.dart';
import 'package:tdd_sampel/features/age_predictor/data/datasources/age_predictor_remote_data_source.dart';
import 'package:tdd_sampel/features/age_predictor/data/models/age_predictor_model.dart';
import 'package:tdd_sampel/features/age_predictor/data/repositories/age_predictor_repositories_impl.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';

import '../../../../fixtures/fixture_reader.dart';

class MockRemoteDataSource extends Mock
    implements AgePredictorRemoteDataSource {}

class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  late AgePredictorRepositoriesImpl repositoriesImpl;
  late MockNetworkInfo mockNetworkInfo;
  late MockRemoteDataSource mockRemoteDataSource;
  setUp(() {
    mockNetworkInfo = MockNetworkInfo();
    mockRemoteDataSource = MockRemoteDataSource();

    repositoriesImpl = AgePredictorRepositoriesImpl(
      agePredictorRemoteDataSource: mockRemoteDataSource,
      networkInfo: mockNetworkInfo,
    );
  });

  group("AgePredictor", () {
    const tName = "Amit";
    final agePredictorModel = AgePredictorModel.fromJson(json.decode(
      fixture('age_predictor.json'),
    ) as Map<String, dynamic>);

    final AgePredictor tAgePredictor = agePredictorModel;

    test("check device is online", () {
      // ! Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      when(() => mockRemoteDataSource.getAgePredictor(tName))
          .thenAnswer((_) async => agePredictorModel);

// ! Act
      repositoriesImpl.getAgeFromName(tName);

      // ! Arrange

      verify(() => mockNetworkInfo.isConnected);
    });

    test(
        "should return remote data when remote Data Source call is Successfull",
        () async {
      // ! Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      when(() => mockRemoteDataSource.getAgePredictor(tName))
          .thenAnswer((_) async => agePredictorModel);

// ! Act
      final result = await repositoriesImpl.getAgeFromName(tName);

      // ! Arrange

      verify(() => mockRemoteDataSource.getAgePredictor(tName));

      expect(result, equals(Right(tAgePredictor)));
    });

    test(
        "should return Server Failure when remote Data Source call is UnSuccessfull",
        () async {
      // ! Arrange
      when(() => mockNetworkInfo.isConnected).thenAnswer((_) async => true);

      when(() => mockRemoteDataSource.getAgePredictor(tName))
          .thenThrow(ServerException());

// ! Act
      final result = await repositoriesImpl.getAgeFromName(tName);

      // ! Arrange

      verify(() => mockRemoteDataSource.getAgePredictor(tName));

      expect(result, equals(Left(ServerFailure())));
    });
  });
}

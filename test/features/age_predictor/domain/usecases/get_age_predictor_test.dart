import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';
import 'package:tdd_sampel/features/age_predictor/domain/repositories/age_predictor_repositories.dart';
import 'package:tdd_sampel/features/age_predictor/domain/usecases/get_age_predictor.dart';

class MockGetAgePredictorRepositories extends Mock
    implements AgePredictorRepositories {}

void main() {
  late GetAgePredictor getAgePredictor;

  late MockGetAgePredictorRepositories mockGetAgePredictorRepositories;

  setUp(() {
    mockGetAgePredictorRepositories = MockGetAgePredictorRepositories();
    getAgePredictor = GetAgePredictor(mockGetAgePredictorRepositories);
  });

  const tName = "Amit";
  const tAgePredictor = AgePredictor(age: 12, name: 'Amit');

  group("Test Get age From  Name", () {
    test('should return string input when any input is consisting of numbers.',
        () async {
      // arrange

      when(() => mockGetAgePredictorRepositories.getAgeFromName(any()))
          .thenAnswer((_) async => const Right(tAgePredictor));

      // act

      final result = await getAgePredictor(const Params(tName));

      // assert

      expect(result, const Right(tAgePredictor));

      verify(() => mockGetAgePredictorRepositories.getAgeFromName(tName));

      verifyNoMoreInteractions(mockGetAgePredictorRepositories);
    });
  });
}

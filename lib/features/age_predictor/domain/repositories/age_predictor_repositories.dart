import 'package:dartz/dartz.dart';
import 'package:tdd_sampel/core/error/failures.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';

abstract class AgePredictorRepositories {
  Future<Either<Failure, AgePredictor>> getAgeFromName(String name);
}

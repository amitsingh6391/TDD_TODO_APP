import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_sampel/core/error/failures.dart';
import 'package:tdd_sampel/core/usecases/usecases.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';
import 'package:tdd_sampel/features/age_predictor/domain/repositories/age_predictor_repositories.dart';

class GetAgePredictor implements UseCases<AgePredictor, Params> {
  final AgePredictorRepositories agePredictorRepositories;

  GetAgePredictor(this.agePredictorRepositories);

  @override
  Future<Either<Failure, AgePredictor>> call(Params params) async {
    return agePredictorRepositories.getAgeFromName(params.name);
  }
}

class Params extends Equatable {
  final String name;
  const Params(this.name);
  @override
  List<Object?> get props => [];
}

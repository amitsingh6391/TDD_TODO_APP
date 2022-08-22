import 'package:tdd_sampel/core/network/network_info.dart';
import 'package:tdd_sampel/features/age_predictor/data/datasources/age_predictor_remote_data_source.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';
import 'package:tdd_sampel/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:tdd_sampel/features/age_predictor/domain/repositories/age_predictor_repositories.dart';

class AgePredictorRepositoriesImpl implements AgePredictorRepositories {
  final NetworkInfo networkInfo;
  final AgePredictorRemoteDataSource agePredictorRemoteDataSource;

  AgePredictorRepositoriesImpl({
    required this.networkInfo,
    required this.agePredictorRemoteDataSource,
  });
  @override
  Future<Either<Failure, AgePredictor>> getAgeFromName(String name) async {
    if (await networkInfo.isConnected) {
      try {
        final agePredictor =
            await agePredictorRemoteDataSource.getAgePredictor(name);

        return Right(agePredictor);
      } on Exception {
        return Left(ServerFailure());
      }
    } else {
      return Left(ServerFailure());
    }
  }
}

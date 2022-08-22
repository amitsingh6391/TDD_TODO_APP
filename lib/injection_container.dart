import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:tdd_sampel/core/network/network_info.dart';
import 'package:tdd_sampel/core/util/input_editor.dart';
import 'package:tdd_sampel/features/age_predictor/data/datasources/age_predictor_remote_data_source.dart';
import 'package:tdd_sampel/features/age_predictor/data/repositories/age_predictor_repositories_impl.dart';
import 'package:tdd_sampel/features/age_predictor/domain/repositories/age_predictor_repositories.dart';
import 'package:tdd_sampel/features/age_predictor/domain/usecases/get_age_predictor.dart';
import 'package:tdd_sampel/features/age_predictor/presentation/bloc/bloc/age_predictor_bloc.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

Future<void> init() async {
  //! Feature - AgePredictor
  sl.registerFactory(
    () => AgePredictorBloc(
      agePredictor: sl(),
      inputEditor: sl(),
    ),
  );

  //! Usecase

  sl.registerLazySingleton(() => GetAgePredictor(sl()));

  //! Repositories

  sl.registerLazySingleton<AgePredictorRepositories>(() =>
      AgePredictorRepositoriesImpl(
          agePredictorRemoteDataSource: sl(), networkInfo: sl()));

  // ! Data Source

  sl.registerLazySingleton<AgePredictorRemoteDataSource>(
      () => AgePredictorRemoteDataSourceImpl(client: sl()));

  // ! core

  sl.registerLazySingleton(() => InputEditor());

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImp(sl()));

  // ! External

  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());
}

part of 'age_predictor_bloc.dart';

@freezed
class AgePredictorState with _$AgePredictorState {
  const factory AgePredictorState.agePredictorIntial() = AgePredictorInital;
  const factory AgePredictorState.agePredictorLoading() = AgePredictorLoading;
  const factory AgePredictorState.agePredicorError(String errMsg) =
      AgePredictorError;
  const factory AgePredictorState.agePredictorLoaded(
      AgePredictor agePredictor) = AgePredictorLoaded;
}

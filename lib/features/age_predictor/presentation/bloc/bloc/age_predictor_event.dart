part of 'age_predictor_bloc.dart';

@freezed
class AgePredictorEvent with _$AgePredictorEvent {
  const factory AgePredictorEvent.ageFromName(String name) = GetAgeFromName;
}

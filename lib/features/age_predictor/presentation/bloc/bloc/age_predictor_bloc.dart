import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tdd_sampel/core/constants/name_constants.dart';
import 'package:tdd_sampel/core/error/failures.dart';
import 'package:tdd_sampel/core/util/input_editor.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';
import 'package:tdd_sampel/features/age_predictor/domain/usecases/get_age_predictor.dart';
part 'age_predictor_event.dart';
part 'age_predictor_state.dart';
part 'age_predictor_bloc.freezed.dart';

class AgePredictorBloc extends Bloc<AgePredictorEvent, AgePredictorState> {
  final GetAgePredictor getAgePredictor;
  final InputEditor inputEditor;

  AgePredictorBloc({
    required GetAgePredictor agePredictor,
    required this.inputEditor,
  })  : getAgePredictor = agePredictor,
        super(const AgePredictorInital()) {
    on<GetAgeFromName>((event, emit) async {
      emit(const AgePredictorLoading());
      final inputEither = inputEditor.removeNumberFromString(event.name);

      String? input;

      inputEither.fold(
        (failure) => emit(
            const AgePredictorError(NameConstants.invalidInputFailureMessage)),
        (name) {
          input = name;
        },
      );

      if (input != null) {
        final failureOrAgePredictor = await getAgePredictor(Params(input!));

        return failureOrAgePredictor.fold(
          (failure) => emit(AgePredictorError(_mapFailureToMessage(failure))),
          (agePredictor) => emit(AgePredictorLoaded(agePredictor)),
        );
      }
    });
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return NameConstants.serverFailureMessage;

      default:
        return NameConstants.unExcptedMessage;
    }
  }
}

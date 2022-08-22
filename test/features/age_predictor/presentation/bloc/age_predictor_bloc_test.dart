import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tdd_sampel/core/util/input_editor.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';
import 'package:tdd_sampel/features/age_predictor/domain/usecases/get_age_predictor.dart';
import 'package:tdd_sampel/features/age_predictor/presentation/bloc/bloc/age_predictor_bloc.dart';

class MockGetAgePredictor extends Mock implements GetAgePredictor {}

class MockInputEditor extends Mock implements InputEditor {}

void main() {
  late MockGetAgePredictor mockGetAgePredictor;
  late MockInputEditor mockInputEditor;

  late AgePredictorBloc bloc;

  setUp(
    () {
      mockGetAgePredictor = MockGetAgePredictor();
      mockInputEditor = MockInputEditor();
      bloc = AgePredictorBloc(
        agePredictor: mockGetAgePredictor,
        inputEditor: mockInputEditor,
      );
    },
  );

  setUpAll(() {
    registerFallbackValue(const Params("Amit"));
  });

  group("AgePredictorBloc", () {
    const tName = "Amit";
    const tAge = 42;

    const tAgePredictor = AgePredictor(age: 42, name: "Amit");

    void setUpInputAndmock() {
      when(() => mockInputEditor.removeNumberFromString(any()))
          .thenReturn(const Right(tName));

      when(() => mockGetAgePredictor(any()))
          .thenAnswer((_) async => const Right(tAgePredictor));
    }

    test(
        'should call the InputEditor to validate and convert input in valid String',
        () async {
      // arrange
      setUpInputAndmock();
      // act
      bloc.add(const GetAgeFromName(tName));

      await untilCalled(
        () => mockInputEditor.removeNumberFromString(any()),
      );
      // assert
      verify(() => mockInputEditor.removeNumberFromString(tName));
    });

    test('should get data in successfull case', () async {
      // arrange
      setUpInputAndmock();
      // act
      bloc.add(const GetAgeFromName(tName));
      await untilCalled(() => mockGetAgePredictor(any()));
      // assert
      verify(
        () => mockGetAgePredictor(const Params(tName)),
      );
    });

    test(
      'should emit [Loading, Loaded] when data is gotten successfully',
      () async {
        // arrange
        setUpInputAndmock();
        // assert later
        final expected = [
          const AgePredictorLoading(),
          const AgePredictorLoaded(tAgePredictor),
        ];
        expectLater(bloc.stream, emitsInOrder(expected));
        // act
        bloc.add(const GetAgeFromName(tName));
      },
    );
  });
}

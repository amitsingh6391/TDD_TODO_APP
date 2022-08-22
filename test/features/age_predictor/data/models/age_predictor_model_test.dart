import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_sampel/features/age_predictor/data/models/age_predictor_model.dart';
import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  const agePredictorModel = AgePredictorModel(age: 42, name: 'Amit');

  group("we will check our age PredictorModel Class with our static json", () {
    test(
      "AgePredictorModel should be subClass of AgePredictor Entity",
      () async {
        expect(agePredictorModel, isA<AgePredictor>());
      },
    );

    test(
      "Should return Valid Model When Json age field is intger ",
      () {
        // ! arrange

        final jsonMap =
            json.decode(fixture('age_predictor.json')) as Map<String, dynamic>;

        // ! Act

        final result = AgePredictorModel.fromJson(jsonMap);

        // ! Assert

        expect(result, agePredictorModel);
      },
    );
    test(
      "Should return Valid Model When Json age null ",
      () async {
        // ! arrange

        final jsonMap = json.decode(fixture('age_predictor_null.json'))
            as Map<String, dynamic>;

        // ! Act

        final result = AgePredictorModel.fromJson(jsonMap);

        // ! Assert

        expect(result, isA<AgePredictorModel>());
        expect(result, isA<AgePredictor>());
      },
    );
  });
}

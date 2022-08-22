import 'package:tdd_sampel/features/age_predictor/domain/entities/age_predictor.dart';

class AgePredictorModel extends AgePredictor {
  const AgePredictorModel({
    required String name,
    required int? age,
  }) : super(name: name, age: age);

  factory AgePredictorModel.fromJson(Map<String, dynamic> json) {
    return AgePredictorModel(name: json['name'], age: json['age']);
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
    };
  }
}

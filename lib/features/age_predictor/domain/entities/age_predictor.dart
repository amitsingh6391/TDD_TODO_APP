import 'package:equatable/equatable.dart';

class AgePredictor extends Equatable {
  final String name;
  final int? age;

  const AgePredictor({required this.name, required this.age});

  @override
  List<Object?> get props => [name, age];
}

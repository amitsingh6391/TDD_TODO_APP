import 'package:dartz/dartz.dart';
import 'package:tdd_sampel/core/error/failures.dart';

class InputEditor {
  Either<Failure, String> removeNumberFromString(String input) {
    try {
      String result = input.replaceAll(RegExp(r"\d+"), "");

      return right(result);
    } on FormatException {
      return left(InvalidInputFailure());
    }
  }
}

class InvalidInputFailure extends Failure {
  @override
  List<Object?> get props => [];
}

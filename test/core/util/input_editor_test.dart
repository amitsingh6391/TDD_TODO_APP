import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_sampel/core/util/input_editor.dart';

void main() {
  late InputEditor inputEditor;

  setUp(() {
    inputEditor = InputEditor();
  });

  group("input editor test", () {
    test('should return string input when any input is consisting of numbers.',
        () {
      // arrange

      const name = "Amit1455";

      // act

      final result = inputEditor.removeNumberFromString(name);

      // assert

      expect(result, const Right('Amit'));
    });
  });
}

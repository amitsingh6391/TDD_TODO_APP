import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:tdd_sampel/core/error/failures.dart';

abstract class UseCases<Type, Params> {
  Future<Either<Failure, Type>> call(Params param);
}

class NoParams extends Equatable {
  @override
  List<Object?> get props => [];
}

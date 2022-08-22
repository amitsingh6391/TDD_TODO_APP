// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'age_predictor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AgePredictorEvent {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) ageFromName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? ageFromName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? ageFromName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAgeFromName value) ageFromName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAgeFromName value)? ageFromName,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAgeFromName value)? ageFromName,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AgePredictorEventCopyWith<AgePredictorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgePredictorEventCopyWith<$Res> {
  factory $AgePredictorEventCopyWith(
          AgePredictorEvent value, $Res Function(AgePredictorEvent) then) =
      _$AgePredictorEventCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$AgePredictorEventCopyWithImpl<$Res>
    implements $AgePredictorEventCopyWith<$Res> {
  _$AgePredictorEventCopyWithImpl(this._value, this._then);

  final AgePredictorEvent _value;
  // ignore: unused_field
  final $Res Function(AgePredictorEvent) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$GetAgeFromNameCopyWith<$Res>
    implements $AgePredictorEventCopyWith<$Res> {
  factory _$$GetAgeFromNameCopyWith(
          _$GetAgeFromName value, $Res Function(_$GetAgeFromName) then) =
      __$$GetAgeFromNameCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$$GetAgeFromNameCopyWithImpl<$Res>
    extends _$AgePredictorEventCopyWithImpl<$Res>
    implements _$$GetAgeFromNameCopyWith<$Res> {
  __$$GetAgeFromNameCopyWithImpl(
      _$GetAgeFromName _value, $Res Function(_$GetAgeFromName) _then)
      : super(_value, (v) => _then(v as _$GetAgeFromName));

  @override
  _$GetAgeFromName get _value => super._value as _$GetAgeFromName;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$GetAgeFromName(
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetAgeFromName implements GetAgeFromName {
  const _$GetAgeFromName(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'AgePredictorEvent.ageFromName(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetAgeFromName &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$GetAgeFromNameCopyWith<_$GetAgeFromName> get copyWith =>
      __$$GetAgeFromNameCopyWithImpl<_$GetAgeFromName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name) ageFromName,
  }) {
    return ageFromName(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String name)? ageFromName,
  }) {
    return ageFromName?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name)? ageFromName,
    required TResult orElse(),
  }) {
    if (ageFromName != null) {
      return ageFromName(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetAgeFromName value) ageFromName,
  }) {
    return ageFromName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(GetAgeFromName value)? ageFromName,
  }) {
    return ageFromName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetAgeFromName value)? ageFromName,
    required TResult orElse(),
  }) {
    if (ageFromName != null) {
      return ageFromName(this);
    }
    return orElse();
  }
}

abstract class GetAgeFromName implements AgePredictorEvent {
  const factory GetAgeFromName(final String name) = _$GetAgeFromName;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$GetAgeFromNameCopyWith<_$GetAgeFromName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AgePredictorState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() agePredictorIntial,
    required TResult Function() agePredictorLoading,
    required TResult Function(String errMsg) agePredicorError,
    required TResult Function(AgePredictor agePredictor) agePredictorLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePredictorInital value) agePredictorIntial,
    required TResult Function(AgePredictorLoading value) agePredictorLoading,
    required TResult Function(AgePredictorError value) agePredicorError,
    required TResult Function(AgePredictorLoaded value) agePredictorLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AgePredictorStateCopyWith<$Res> {
  factory $AgePredictorStateCopyWith(
          AgePredictorState value, $Res Function(AgePredictorState) then) =
      _$AgePredictorStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AgePredictorStateCopyWithImpl<$Res>
    implements $AgePredictorStateCopyWith<$Res> {
  _$AgePredictorStateCopyWithImpl(this._value, this._then);

  final AgePredictorState _value;
  // ignore: unused_field
  final $Res Function(AgePredictorState) _then;
}

/// @nodoc
abstract class _$$AgePredictorInitalCopyWith<$Res> {
  factory _$$AgePredictorInitalCopyWith(_$AgePredictorInital value,
          $Res Function(_$AgePredictorInital) then) =
      __$$AgePredictorInitalCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AgePredictorInitalCopyWithImpl<$Res>
    extends _$AgePredictorStateCopyWithImpl<$Res>
    implements _$$AgePredictorInitalCopyWith<$Res> {
  __$$AgePredictorInitalCopyWithImpl(
      _$AgePredictorInital _value, $Res Function(_$AgePredictorInital) _then)
      : super(_value, (v) => _then(v as _$AgePredictorInital));

  @override
  _$AgePredictorInital get _value => super._value as _$AgePredictorInital;
}

/// @nodoc

class _$AgePredictorInital implements AgePredictorInital {
  const _$AgePredictorInital();

  @override
  String toString() {
    return 'AgePredictorState.agePredictorIntial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AgePredictorInital);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() agePredictorIntial,
    required TResult Function() agePredictorLoading,
    required TResult Function(String errMsg) agePredicorError,
    required TResult Function(AgePredictor agePredictor) agePredictorLoaded,
  }) {
    return agePredictorIntial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
  }) {
    return agePredictorIntial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
    required TResult orElse(),
  }) {
    if (agePredictorIntial != null) {
      return agePredictorIntial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePredictorInital value) agePredictorIntial,
    required TResult Function(AgePredictorLoading value) agePredictorLoading,
    required TResult Function(AgePredictorError value) agePredicorError,
    required TResult Function(AgePredictorLoaded value) agePredictorLoaded,
  }) {
    return agePredictorIntial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
  }) {
    return agePredictorIntial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
    required TResult orElse(),
  }) {
    if (agePredictorIntial != null) {
      return agePredictorIntial(this);
    }
    return orElse();
  }
}

abstract class AgePredictorInital implements AgePredictorState {
  const factory AgePredictorInital() = _$AgePredictorInital;
}

/// @nodoc
abstract class _$$AgePredictorLoadingCopyWith<$Res> {
  factory _$$AgePredictorLoadingCopyWith(_$AgePredictorLoading value,
          $Res Function(_$AgePredictorLoading) then) =
      __$$AgePredictorLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AgePredictorLoadingCopyWithImpl<$Res>
    extends _$AgePredictorStateCopyWithImpl<$Res>
    implements _$$AgePredictorLoadingCopyWith<$Res> {
  __$$AgePredictorLoadingCopyWithImpl(
      _$AgePredictorLoading _value, $Res Function(_$AgePredictorLoading) _then)
      : super(_value, (v) => _then(v as _$AgePredictorLoading));

  @override
  _$AgePredictorLoading get _value => super._value as _$AgePredictorLoading;
}

/// @nodoc

class _$AgePredictorLoading implements AgePredictorLoading {
  const _$AgePredictorLoading();

  @override
  String toString() {
    return 'AgePredictorState.agePredictorLoading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AgePredictorLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() agePredictorIntial,
    required TResult Function() agePredictorLoading,
    required TResult Function(String errMsg) agePredicorError,
    required TResult Function(AgePredictor agePredictor) agePredictorLoaded,
  }) {
    return agePredictorLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
  }) {
    return agePredictorLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
    required TResult orElse(),
  }) {
    if (agePredictorLoading != null) {
      return agePredictorLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePredictorInital value) agePredictorIntial,
    required TResult Function(AgePredictorLoading value) agePredictorLoading,
    required TResult Function(AgePredictorError value) agePredicorError,
    required TResult Function(AgePredictorLoaded value) agePredictorLoaded,
  }) {
    return agePredictorLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
  }) {
    return agePredictorLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
    required TResult orElse(),
  }) {
    if (agePredictorLoading != null) {
      return agePredictorLoading(this);
    }
    return orElse();
  }
}

abstract class AgePredictorLoading implements AgePredictorState {
  const factory AgePredictorLoading() = _$AgePredictorLoading;
}

/// @nodoc
abstract class _$$AgePredictorErrorCopyWith<$Res> {
  factory _$$AgePredictorErrorCopyWith(
          _$AgePredictorError value, $Res Function(_$AgePredictorError) then) =
      __$$AgePredictorErrorCopyWithImpl<$Res>;
  $Res call({String errMsg});
}

/// @nodoc
class __$$AgePredictorErrorCopyWithImpl<$Res>
    extends _$AgePredictorStateCopyWithImpl<$Res>
    implements _$$AgePredictorErrorCopyWith<$Res> {
  __$$AgePredictorErrorCopyWithImpl(
      _$AgePredictorError _value, $Res Function(_$AgePredictorError) _then)
      : super(_value, (v) => _then(v as _$AgePredictorError));

  @override
  _$AgePredictorError get _value => super._value as _$AgePredictorError;

  @override
  $Res call({
    Object? errMsg = freezed,
  }) {
    return _then(_$AgePredictorError(
      errMsg == freezed
          ? _value.errMsg
          : errMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AgePredictorError implements AgePredictorError {
  const _$AgePredictorError(this.errMsg);

  @override
  final String errMsg;

  @override
  String toString() {
    return 'AgePredictorState.agePredicorError(errMsg: $errMsg)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgePredictorError &&
            const DeepCollectionEquality().equals(other.errMsg, errMsg));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errMsg));

  @JsonKey(ignore: true)
  @override
  _$$AgePredictorErrorCopyWith<_$AgePredictorError> get copyWith =>
      __$$AgePredictorErrorCopyWithImpl<_$AgePredictorError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() agePredictorIntial,
    required TResult Function() agePredictorLoading,
    required TResult Function(String errMsg) agePredicorError,
    required TResult Function(AgePredictor agePredictor) agePredictorLoaded,
  }) {
    return agePredicorError(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
  }) {
    return agePredicorError?.call(errMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
    required TResult orElse(),
  }) {
    if (agePredicorError != null) {
      return agePredicorError(errMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePredictorInital value) agePredictorIntial,
    required TResult Function(AgePredictorLoading value) agePredictorLoading,
    required TResult Function(AgePredictorError value) agePredicorError,
    required TResult Function(AgePredictorLoaded value) agePredictorLoaded,
  }) {
    return agePredicorError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
  }) {
    return agePredicorError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
    required TResult orElse(),
  }) {
    if (agePredicorError != null) {
      return agePredicorError(this);
    }
    return orElse();
  }
}

abstract class AgePredictorError implements AgePredictorState {
  const factory AgePredictorError(final String errMsg) = _$AgePredictorError;

  String get errMsg;
  @JsonKey(ignore: true)
  _$$AgePredictorErrorCopyWith<_$AgePredictorError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AgePredictorLoadedCopyWith<$Res> {
  factory _$$AgePredictorLoadedCopyWith(_$AgePredictorLoaded value,
          $Res Function(_$AgePredictorLoaded) then) =
      __$$AgePredictorLoadedCopyWithImpl<$Res>;
  $Res call({AgePredictor agePredictor});
}

/// @nodoc
class __$$AgePredictorLoadedCopyWithImpl<$Res>
    extends _$AgePredictorStateCopyWithImpl<$Res>
    implements _$$AgePredictorLoadedCopyWith<$Res> {
  __$$AgePredictorLoadedCopyWithImpl(
      _$AgePredictorLoaded _value, $Res Function(_$AgePredictorLoaded) _then)
      : super(_value, (v) => _then(v as _$AgePredictorLoaded));

  @override
  _$AgePredictorLoaded get _value => super._value as _$AgePredictorLoaded;

  @override
  $Res call({
    Object? agePredictor = freezed,
  }) {
    return _then(_$AgePredictorLoaded(
      agePredictor == freezed
          ? _value.agePredictor
          : agePredictor // ignore: cast_nullable_to_non_nullable
              as AgePredictor,
    ));
  }
}

/// @nodoc

class _$AgePredictorLoaded implements AgePredictorLoaded {
  const _$AgePredictorLoaded(this.agePredictor);

  @override
  final AgePredictor agePredictor;

  @override
  String toString() {
    return 'AgePredictorState.agePredictorLoaded(agePredictor: $agePredictor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AgePredictorLoaded &&
            const DeepCollectionEquality()
                .equals(other.agePredictor, agePredictor));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(agePredictor));

  @JsonKey(ignore: true)
  @override
  _$$AgePredictorLoadedCopyWith<_$AgePredictorLoaded> get copyWith =>
      __$$AgePredictorLoadedCopyWithImpl<_$AgePredictorLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() agePredictorIntial,
    required TResult Function() agePredictorLoading,
    required TResult Function(String errMsg) agePredicorError,
    required TResult Function(AgePredictor agePredictor) agePredictorLoaded,
  }) {
    return agePredictorLoaded(agePredictor);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
  }) {
    return agePredictorLoaded?.call(agePredictor);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? agePredictorIntial,
    TResult Function()? agePredictorLoading,
    TResult Function(String errMsg)? agePredicorError,
    TResult Function(AgePredictor agePredictor)? agePredictorLoaded,
    required TResult orElse(),
  }) {
    if (agePredictorLoaded != null) {
      return agePredictorLoaded(agePredictor);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AgePredictorInital value) agePredictorIntial,
    required TResult Function(AgePredictorLoading value) agePredictorLoading,
    required TResult Function(AgePredictorError value) agePredicorError,
    required TResult Function(AgePredictorLoaded value) agePredictorLoaded,
  }) {
    return agePredictorLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
  }) {
    return agePredictorLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AgePredictorInital value)? agePredictorIntial,
    TResult Function(AgePredictorLoading value)? agePredictorLoading,
    TResult Function(AgePredictorError value)? agePredicorError,
    TResult Function(AgePredictorLoaded value)? agePredictorLoaded,
    required TResult orElse(),
  }) {
    if (agePredictorLoaded != null) {
      return agePredictorLoaded(this);
    }
    return orElse();
  }
}

abstract class AgePredictorLoaded implements AgePredictorState {
  const factory AgePredictorLoaded(final AgePredictor agePredictor) =
      _$AgePredictorLoaded;

  AgePredictor get agePredictor;
  @JsonKey(ignore: true)
  _$$AgePredictorLoadedCopyWith<_$AgePredictorLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

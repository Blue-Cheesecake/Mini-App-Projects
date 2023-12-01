// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_output_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormOutputState {
  int? get days => throw _privateConstructorUsedError;
  int? get months => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormOutputStateCopyWith<FormOutputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormOutputStateCopyWith<$Res> {
  factory $FormOutputStateCopyWith(
          FormOutputState value, $Res Function(FormOutputState) then) =
      _$FormOutputStateCopyWithImpl<$Res, FormOutputState>;
  @useResult
  $Res call({int? days, int? months, int? year});
}

/// @nodoc
class _$FormOutputStateCopyWithImpl<$Res, $Val extends FormOutputState>
    implements $FormOutputStateCopyWith<$Res> {
  _$FormOutputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = freezed,
    Object? months = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      months: freezed == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormOutputStateImplCopyWith<$Res>
    implements $FormOutputStateCopyWith<$Res> {
  factory _$$FormOutputStateImplCopyWith(_$FormOutputStateImpl value,
          $Res Function(_$FormOutputStateImpl) then) =
      __$$FormOutputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? days, int? months, int? year});
}

/// @nodoc
class __$$FormOutputStateImplCopyWithImpl<$Res>
    extends _$FormOutputStateCopyWithImpl<$Res, _$FormOutputStateImpl>
    implements _$$FormOutputStateImplCopyWith<$Res> {
  __$$FormOutputStateImplCopyWithImpl(
      _$FormOutputStateImpl _value, $Res Function(_$FormOutputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? days = freezed,
    Object? months = freezed,
    Object? year = freezed,
  }) {
    return _then(_$FormOutputStateImpl(
      days: freezed == days
          ? _value.days
          : days // ignore: cast_nullable_to_non_nullable
              as int?,
      months: freezed == months
          ? _value.months
          : months // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FormOutputStateImpl implements _FormOutputState {
  _$FormOutputStateImpl({this.days, this.months, this.year});

  @override
  final int? days;
  @override
  final int? months;
  @override
  final int? year;

  @override
  String toString() {
    return 'FormOutputState(days: $days, months: $months, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormOutputStateImpl &&
            (identical(other.days, days) || other.days == days) &&
            (identical(other.months, months) || other.months == months) &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, days, months, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormOutputStateImplCopyWith<_$FormOutputStateImpl> get copyWith =>
      __$$FormOutputStateImplCopyWithImpl<_$FormOutputStateImpl>(
          this, _$identity);
}

abstract class _FormOutputState implements FormOutputState {
  factory _FormOutputState(
      {final int? days,
      final int? months,
      final int? year}) = _$FormOutputStateImpl;

  @override
  int? get days;
  @override
  int? get months;
  @override
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$FormOutputStateImplCopyWith<_$FormOutputStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

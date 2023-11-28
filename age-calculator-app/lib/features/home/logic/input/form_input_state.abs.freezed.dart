// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'form_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FormInputState {
  int? get day => throw _privateConstructorUsedError;
  int? get month => throw _privateConstructorUsedError;
  int? get year => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FormInputStateCopyWith<FormInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FormInputStateCopyWith<$Res> {
  factory $FormInputStateCopyWith(
          FormInputState value, $Res Function(FormInputState) then) =
      _$FormInputStateCopyWithImpl<$Res, FormInputState>;
  @useResult
  $Res call({int? day, int? month, int? year});
}

/// @nodoc
class _$FormInputStateCopyWithImpl<$Res, $Val extends FormInputState>
    implements $FormInputStateCopyWith<$Res> {
  _$FormInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FormInputStateImplCopyWith<$Res>
    implements $FormInputStateCopyWith<$Res> {
  factory _$$FormInputStateImplCopyWith(_$FormInputStateImpl value,
          $Res Function(_$FormInputStateImpl) then) =
      __$$FormInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? day, int? month, int? year});
}

/// @nodoc
class __$$FormInputStateImplCopyWithImpl<$Res>
    extends _$FormInputStateCopyWithImpl<$Res, _$FormInputStateImpl>
    implements _$$FormInputStateImplCopyWith<$Res> {
  __$$FormInputStateImplCopyWithImpl(
      _$FormInputStateImpl _value, $Res Function(_$FormInputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? month = freezed,
    Object? year = freezed,
  }) {
    return _then(_$FormInputStateImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int?,
      month: freezed == month
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int?,
      year: freezed == year
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FormInputStateImpl implements _FormInputState {
  _$FormInputStateImpl({this.day, this.month, this.year});

  @override
  final int? day;
  @override
  final int? month;
  @override
  final int? year;

  @override
  String toString() {
    return 'FormInputState(day: $day, month: $month, year: $year)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormInputStateImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.month, month) || other.month == month) &&
            (identical(other.year, year) || other.year == year));
  }

  @override
  int get hashCode => Object.hash(runtimeType, day, month, year);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormInputStateImplCopyWith<_$FormInputStateImpl> get copyWith =>
      __$$FormInputStateImplCopyWithImpl<_$FormInputStateImpl>(
          this, _$identity);
}

abstract class _FormInputState implements FormInputState {
  factory _FormInputState({final int? day, final int? month, final int? year}) =
      _$FormInputStateImpl;

  @override
  int? get day;
  @override
  int? get month;
  @override
  int? get year;
  @override
  @JsonKey(ignore: true)
  _$$FormInputStateImplCopyWith<_$FormInputStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

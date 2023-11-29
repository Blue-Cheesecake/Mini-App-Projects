// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'validation_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValidationInputState {
  String? get dayErrorText => throw _privateConstructorUsedError;
  String? get monthErrorText => throw _privateConstructorUsedError;
  String? get yearErrorText => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ValidationInputStateCopyWith<ValidationInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValidationInputStateCopyWith<$Res> {
  factory $ValidationInputStateCopyWith(ValidationInputState value,
          $Res Function(ValidationInputState) then) =
      _$ValidationInputStateCopyWithImpl<$Res, ValidationInputState>;
  @useResult
  $Res call(
      {String? dayErrorText, String? monthErrorText, String? yearErrorText});
}

/// @nodoc
class _$ValidationInputStateCopyWithImpl<$Res,
        $Val extends ValidationInputState>
    implements $ValidationInputStateCopyWith<$Res> {
  _$ValidationInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayErrorText = freezed,
    Object? monthErrorText = freezed,
    Object? yearErrorText = freezed,
  }) {
    return _then(_value.copyWith(
      dayErrorText: freezed == dayErrorText
          ? _value.dayErrorText
          : dayErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      monthErrorText: freezed == monthErrorText
          ? _value.monthErrorText
          : monthErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      yearErrorText: freezed == yearErrorText
          ? _value.yearErrorText
          : yearErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ValidationInputStateImplCopyWith<$Res>
    implements $ValidationInputStateCopyWith<$Res> {
  factory _$$ValidationInputStateImplCopyWith(_$ValidationInputStateImpl value,
          $Res Function(_$ValidationInputStateImpl) then) =
      __$$ValidationInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? dayErrorText, String? monthErrorText, String? yearErrorText});
}

/// @nodoc
class __$$ValidationInputStateImplCopyWithImpl<$Res>
    extends _$ValidationInputStateCopyWithImpl<$Res, _$ValidationInputStateImpl>
    implements _$$ValidationInputStateImplCopyWith<$Res> {
  __$$ValidationInputStateImplCopyWithImpl(_$ValidationInputStateImpl _value,
      $Res Function(_$ValidationInputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dayErrorText = freezed,
    Object? monthErrorText = freezed,
    Object? yearErrorText = freezed,
  }) {
    return _then(_$ValidationInputStateImpl(
      dayErrorText: freezed == dayErrorText
          ? _value.dayErrorText
          : dayErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      monthErrorText: freezed == monthErrorText
          ? _value.monthErrorText
          : monthErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
      yearErrorText: freezed == yearErrorText
          ? _value.yearErrorText
          : yearErrorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ValidationInputStateImpl implements _ValidationInputState {
  _$ValidationInputStateImpl(
      {this.dayErrorText, this.monthErrorText, this.yearErrorText});

  @override
  final String? dayErrorText;
  @override
  final String? monthErrorText;
  @override
  final String? yearErrorText;

  @override
  String toString() {
    return 'ValidationInputState(dayErrorText: $dayErrorText, monthErrorText: $monthErrorText, yearErrorText: $yearErrorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ValidationInputStateImpl &&
            (identical(other.dayErrorText, dayErrorText) ||
                other.dayErrorText == dayErrorText) &&
            (identical(other.monthErrorText, monthErrorText) ||
                other.monthErrorText == monthErrorText) &&
            (identical(other.yearErrorText, yearErrorText) ||
                other.yearErrorText == yearErrorText));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, dayErrorText, monthErrorText, yearErrorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ValidationInputStateImplCopyWith<_$ValidationInputStateImpl>
      get copyWith =>
          __$$ValidationInputStateImplCopyWithImpl<_$ValidationInputStateImpl>(
              this, _$identity);
}

abstract class _ValidationInputState implements ValidationInputState {
  factory _ValidationInputState(
      {final String? dayErrorText,
      final String? monthErrorText,
      final String? yearErrorText}) = _$ValidationInputStateImpl;

  @override
  String? get dayErrorText;
  @override
  String? get monthErrorText;
  @override
  String? get yearErrorText;
  @override
  @JsonKey(ignore: true)
  _$$ValidationInputStateImplCopyWith<_$ValidationInputStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

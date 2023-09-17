// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'text_style_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TextStyleState {
  Color get color => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TextStyleStateCopyWith<TextStyleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextStyleStateCopyWith<$Res> {
  factory $TextStyleStateCopyWith(
          TextStyleState value, $Res Function(TextStyleState) then) =
      _$TextStyleStateCopyWithImpl<$Res, TextStyleState>;
  @useResult
  $Res call({Color color});
}

/// @nodoc
class _$TextStyleStateCopyWithImpl<$Res, $Val extends TextStyleState>
    implements $TextStyleStateCopyWith<$Res> {
  _$TextStyleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TextStyleStateCopyWith<$Res>
    implements $TextStyleStateCopyWith<$Res> {
  factory _$$_TextStyleStateCopyWith(
          _$_TextStyleState value, $Res Function(_$_TextStyleState) then) =
      __$$_TextStyleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color color});
}

/// @nodoc
class __$$_TextStyleStateCopyWithImpl<$Res>
    extends _$TextStyleStateCopyWithImpl<$Res, _$_TextStyleState>
    implements _$$_TextStyleStateCopyWith<$Res> {
  __$$_TextStyleStateCopyWithImpl(
      _$_TextStyleState _value, $Res Function(_$_TextStyleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
  }) {
    return _then(_$_TextStyleState(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_TextStyleState implements _TextStyleState {
  _$_TextStyleState({required this.color});

  @override
  final Color color;

  @override
  String toString() {
    return 'TextStyleState(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TextStyleState &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, color);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TextStyleStateCopyWith<_$_TextStyleState> get copyWith =>
      __$$_TextStyleStateCopyWithImpl<_$_TextStyleState>(this, _$identity);
}

abstract class _TextStyleState implements TextStyleState {
  factory _TextStyleState({required final Color color}) = _$_TextStyleState;

  @override
  Color get color;
  @override
  @JsonKey(ignore: true)
  _$$_TextStyleStateCopyWith<_$_TextStyleState> get copyWith =>
      throw _privateConstructorUsedError;
}

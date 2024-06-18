// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_place_input_state.abs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddPlaceInputState {
  TextEditingController get textEditingController =>
      throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPlaceInputStateCopyWith<AddPlaceInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPlaceInputStateCopyWith<$Res> {
  factory $AddPlaceInputStateCopyWith(
          AddPlaceInputState value, $Res Function(AddPlaceInputState) then) =
      _$AddPlaceInputStateCopyWithImpl<$Res, AddPlaceInputState>;
  @useResult
  $Res call({TextEditingController textEditingController, String? text});
}

/// @nodoc
class _$AddPlaceInputStateCopyWithImpl<$Res, $Val extends AddPlaceInputState>
    implements $AddPlaceInputStateCopyWith<$Res> {
  _$AddPlaceInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textEditingController = null,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      textEditingController: null == textEditingController
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddPlaceInputStateImplCopyWith<$Res>
    implements $AddPlaceInputStateCopyWith<$Res> {
  factory _$$AddPlaceInputStateImplCopyWith(_$AddPlaceInputStateImpl value,
          $Res Function(_$AddPlaceInputStateImpl) then) =
      __$$AddPlaceInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController textEditingController, String? text});
}

/// @nodoc
class __$$AddPlaceInputStateImplCopyWithImpl<$Res>
    extends _$AddPlaceInputStateCopyWithImpl<$Res, _$AddPlaceInputStateImpl>
    implements _$$AddPlaceInputStateImplCopyWith<$Res> {
  __$$AddPlaceInputStateImplCopyWithImpl(_$AddPlaceInputStateImpl _value,
      $Res Function(_$AddPlaceInputStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? textEditingController = null,
    Object? text = freezed,
  }) {
    return _then(_$AddPlaceInputStateImpl(
      textEditingController: null == textEditingController
          ? _value.textEditingController
          : textEditingController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AddPlaceInputStateImpl implements _AddPlaceInputState {
  _$AddPlaceInputStateImpl({required this.textEditingController, this.text});

  @override
  final TextEditingController textEditingController;
  @override
  final String? text;

  @override
  String toString() {
    return 'AddPlaceInputState(textEditingController: $textEditingController, text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPlaceInputStateImpl &&
            (identical(other.textEditingController, textEditingController) ||
                other.textEditingController == textEditingController) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, textEditingController, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddPlaceInputStateImplCopyWith<_$AddPlaceInputStateImpl> get copyWith =>
      __$$AddPlaceInputStateImplCopyWithImpl<_$AddPlaceInputStateImpl>(
          this, _$identity);
}

abstract class _AddPlaceInputState implements AddPlaceInputState {
  factory _AddPlaceInputState(
      {required final TextEditingController textEditingController,
      final String? text}) = _$AddPlaceInputStateImpl;

  @override
  TextEditingController get textEditingController;
  @override
  String? get text;
  @override
  @JsonKey(ignore: true)
  _$$AddPlaceInputStateImplCopyWith<_$AddPlaceInputStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

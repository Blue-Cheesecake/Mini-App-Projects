import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_input_state.abs.freezed.dart';

@freezed
class FormInputState with _$FormInputState {
  factory FormInputState({
    int? day,
    int? month,
    int? year,
    @Default(false) bool isButtonEnabled,
  }) = _FormInputState;
}

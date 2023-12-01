import 'package:freezed_annotation/freezed_annotation.dart';

part 'form_output_state.abs.freezed.dart';

@freezed
class FormOutputState with _$FormOutputState {
  factory FormOutputState({
    int? days,
    int? months,
    int? year,
  }) = _FormOutputState;
}

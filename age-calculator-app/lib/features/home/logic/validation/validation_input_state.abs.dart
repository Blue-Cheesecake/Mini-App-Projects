import 'package:freezed_annotation/freezed_annotation.dart';

part 'validation_input_state.abs.freezed.dart';

@freezed
class ValidationInputState with _$ValidationInputState {
  factory ValidationInputState({
    String? dayErrorText,
    String? monthErrorText,
    String? yearErrorText,
  }) = _ValidationInputState;
}

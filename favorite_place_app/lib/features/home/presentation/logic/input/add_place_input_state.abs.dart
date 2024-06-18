import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_place_input_state.abs.freezed.dart';

@freezed
class AddPlaceInputState with _$AddPlaceInputState {
  factory AddPlaceInputState({
    required final TextEditingController textEditingController,
    final String? text,
  }) = _AddPlaceInputState;
}

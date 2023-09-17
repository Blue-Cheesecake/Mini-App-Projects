import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'text_style_state.abs.freezed.dart';

@freezed
class TextStyleState with _$TextStyleState {
  factory TextStyleState({
    required final Color color,
  }) = _TextStyleState;
}

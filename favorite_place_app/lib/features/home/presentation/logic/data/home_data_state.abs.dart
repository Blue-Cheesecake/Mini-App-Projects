import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data/data.dart';

part 'home_data_state.abs.freezed.dart';

@freezed
class HomeDataState with _$HomeDataState {
  HomeDataState._();

  factory HomeDataState({
    @Default([]) final List<PlaceModel> places,
  }) = _HomeDataState;

  bool get isEmpty => places.isEmpty;
}

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:tip_calculator/utils/constants.dart';

part 'select_tip_event.dart';
part 'select_tip_state.dart';

class SelectTipBloc extends Bloc<SelectTipEvent, SelectTipState> {
  SelectTipBloc() : super(const SelectTipState(defaultTip)) {
    on<SelectTip>((event, emit) {
      // TODO: implement event handler
      emit(state.copyWith(event.selectedTipValue));
    });
  }
}

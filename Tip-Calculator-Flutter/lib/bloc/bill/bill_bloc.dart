import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bill_event.dart';
part 'bill_state.dart';

class BillBloc extends Bloc<BillEvent, BillState> {
  BillBloc() : super(const BillState(0.0)) {
    on<ChangeBillValueEvent>((event, emit) {
      // TODO: implement event handler
      print(event.newVal);
      emit(state.copyWith(event.newVal));
    });

    on<ResetBillValueEvent>((event, emit) {
      emit(state.copyWith(0));
    });
  }
}

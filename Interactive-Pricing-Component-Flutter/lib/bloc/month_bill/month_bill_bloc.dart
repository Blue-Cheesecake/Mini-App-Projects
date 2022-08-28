import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'month_bill_event.dart';
part 'month_bill_state.dart';

class MonthBillBloc extends Bloc<MonthBillEvent, MonthBillState> {
  MonthBillBloc() : super(const MonthBillState(16.00)) {
    on<ChangeMonthBill>((event, emit) {
      emit(state.copyWith(event.newVal));
    });
  }
}

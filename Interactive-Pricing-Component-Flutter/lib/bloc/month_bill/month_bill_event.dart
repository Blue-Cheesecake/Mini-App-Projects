part of 'month_bill_bloc.dart';

abstract class MonthBillEvent extends Equatable {
  const MonthBillEvent();
}

class ChangeMonthBill extends MonthBillEvent {

  final double newVal;

  const ChangeMonthBill(this.newVal);

  @override
  // TODO: implement props
  List<Object?> get props => [newVal];
}
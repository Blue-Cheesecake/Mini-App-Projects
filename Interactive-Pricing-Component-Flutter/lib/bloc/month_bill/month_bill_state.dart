part of 'month_bill_bloc.dart';

class MonthBillState extends Equatable {
  final double monthBillValue;

  const MonthBillState(this.monthBillValue);

  MonthBillState copyWith(double? newVal) {
    return MonthBillState(newVal ?? 0);
  }

  @override
  List<Object> get props => [monthBillValue];
}

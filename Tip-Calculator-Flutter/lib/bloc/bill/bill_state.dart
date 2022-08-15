part of 'bill_bloc.dart';

class BillState extends Equatable {
  final double billValue;

  BillState copyWith(double? newValue) => BillState(newValue ?? 0);

  const BillState(this.billValue);

  @override
  List<Object> get props => [billValue];
}

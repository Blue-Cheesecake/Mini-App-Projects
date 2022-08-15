part of 'bill_bloc.dart';

abstract class BillEvent extends Equatable {
  const BillEvent();
}

class ChangeBillValueEvent extends BillEvent {
  final double newVal;

  const ChangeBillValueEvent(this.newVal);

  @override
  // TODO: implement props
  List<Object?> get props => [newVal];
}

class ResetBillValueEvent extends BillEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

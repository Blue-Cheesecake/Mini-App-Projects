part of 'bill_bloc.dart';

abstract class BillState extends Equatable {
  const BillState();
}

class BillInitial extends BillState {
  @override
  List<Object> get props => [];
}

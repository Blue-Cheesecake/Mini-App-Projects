part of 'select_tip_bloc.dart';

class SelectTipState extends Equatable {
  final int selectedTip;

  const SelectTipState(this.selectedTip);

  SelectTipState copyWith(int newVal) => SelectTipState(newVal);

  @override
  List<Object> get props => [];
}


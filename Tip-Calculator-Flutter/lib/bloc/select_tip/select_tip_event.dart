part of 'select_tip_bloc.dart';

abstract class SelectTipEvent extends Equatable {
  const SelectTipEvent();
}

class SelectTip extends SelectTipEvent {

  final int selectedTipValue;

  const SelectTip(this.selectedTipValue);

  @override
  List<Object?> get props => [selectedTipValue];
}
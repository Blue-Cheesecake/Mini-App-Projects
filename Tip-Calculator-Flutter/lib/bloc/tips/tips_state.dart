part of 'tips_bloc.dart';

abstract class TipsState extends Equatable {
  const TipsState();
}

class TipsInitial extends TipsState {
  @override
  List<Object> get props => [];
}

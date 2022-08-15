part of 'num_of_people_bloc.dart';

abstract class NumOfPeopleEvent extends Equatable {
  const NumOfPeopleEvent();
}

class ChangeNumPeopleEvent extends NumOfPeopleEvent {
  final int newVal;

  const ChangeNumPeopleEvent(this.newVal);

  @override
  // TODO: implement props
  List<Object?> get props => [newVal];
}

class ResetNumPeopleEvent extends NumOfPeopleEvent {
  @override
  // TODO: implement props
  List<Object?> get props => [];
}

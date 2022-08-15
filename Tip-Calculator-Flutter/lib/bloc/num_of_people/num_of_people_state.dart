part of 'num_of_people_bloc.dart';

class NumOfPeopleState extends Equatable {
  final int numOfPeople;

  const NumOfPeopleState(this.numOfPeople);

  NumOfPeopleState copyWith(int newVal) => NumOfPeopleState(newVal);

  @override
  List<Object> get props => [numOfPeople];
}

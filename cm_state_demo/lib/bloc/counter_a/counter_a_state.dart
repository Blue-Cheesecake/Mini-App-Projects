part of 'counter_a_bloc.dart';

class CounterAState extends Equatable {
  final int counter;

  const CounterAState(this.counter);

  CounterAState copyWith(int? counter) {
    return CounterAState(counter ?? 0);
  }

  @override
  List<Object> get props => [counter];
}

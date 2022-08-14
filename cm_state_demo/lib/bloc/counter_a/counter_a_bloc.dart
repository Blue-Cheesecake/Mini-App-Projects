import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_a_event.dart';
part 'counter_a_state.dart';

class CounterABloc extends Bloc<CounterAEvent, CounterAState> {
  CounterABloc() : super(CounterAState(0)) {
    on<CounterAEventAdd>((event, emit) {
      emit(state.copyWith(state.counter + 1));
    });

    on<CounterAEventReset>((event, emit) {
      emit(state.copyWith(0));
    });
  }
}

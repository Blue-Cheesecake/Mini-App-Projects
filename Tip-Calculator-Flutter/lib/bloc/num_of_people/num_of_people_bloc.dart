import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'num_of_people_event.dart';
part 'num_of_people_state.dart';

class NumOfPeopleBloc extends Bloc<NumOfPeopleEvent, NumOfPeopleState> {
  NumOfPeopleBloc() : super(const NumOfPeopleState(0)) {
    on<ChangeNumPeopleEvent>((event, emit) {
      print(event.newVal);
      emit(state.copyWith(event.newVal));
    });

    on<ResetNumPeopleEvent>((event, emit) {
      emit(state.copyWith(0));
    });
  }
}

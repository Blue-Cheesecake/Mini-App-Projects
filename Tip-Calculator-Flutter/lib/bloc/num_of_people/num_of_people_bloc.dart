import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'num_of_people_event.dart';
part 'num_of_people_state.dart';

class NumOfPeopleBloc extends Bloc<NumOfPeopleEvent, NumOfPeopleState> {
  NumOfPeopleBloc() : super(NumOfPeopleInitial()) {
    on<NumOfPeopleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'number_of_people_event.dart';
part 'number_of_people_state.dart';

class NumberOfPeopleBloc extends Bloc<NumberOfPeopleEvent, NumberOfPeopleState> {
  NumberOfPeopleBloc() : super(NumberOfPeopleInitial()) {
    on<NumberOfPeopleEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

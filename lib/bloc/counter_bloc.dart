import 'package:bloc_app/bloc/counter_event.dart';
import 'package:bloc_app/bloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(count: 0, isReverse: false)) {
    on<Increment>((event, emit) {
      emit(
        state.copyWith(count: state.count + 1),
      );
    });

    on<Decrement>((event, emit) {
      emit(
        state.copyWith(count: state.count - 1),
        // CounterState(count:state.count - 1, isReverse: state.isReverse)
      );
    });

    on<ToggleMethod>((event, emit) {
      emit(
        state.copyWith(isReverse: !state.isReverse),
      );
    });
  }
}

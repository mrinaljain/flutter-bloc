// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:bloc_app/bloc/counter_bloc.dart';
import 'package:bloc_app/bloc/counter_event.dart';
import 'package:bloc_app/bloc/counter_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group("All counter tests ", () {
    late CounterBloc counterBloc;
    // At the begining
    setUp(() {
      counterBloc = CounterBloc();
    });

    // in the end of each test
    tearDown(() {
      counterBloc.close();
    });

    test("CounterBloc initial state should be 0 and reverse should be off", () {
      expect(counterBloc.state.count, 0);
      expect(counterBloc.state.isReverse, false);
    });

    blocTest<CounterBloc, CounterState>(
      "the state should emit an updated counter value when Increment is added",
      build: () => counterBloc,
      act: (bloc) => bloc.add(Increment()),
      expect: () => [CounterState(count: 1, isReverse: false)],
    );

    blocTest<CounterBloc, CounterState>(
      "the state should emit an updated counter value when Decrement is added",
      build: () => counterBloc,
      act: (bloc) => bloc.add(Decrement()),
      expect: () => [CounterState(count: -1, isReverse: false)],
    );
  });
}

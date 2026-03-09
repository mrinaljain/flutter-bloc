// counter_state.dart

import 'package:equatable/equatable.dart';

class CounterState extends Equatable {
  final int count;
  final bool isReverse;

  const CounterState({required this.isReverse, required this.count});

  @override
  List<Object?> get props => [count, isReverse];

  // copywith kya karega pehle check  karega ki  nayi value pass kri hai kya otherwise  old value ko continue karega.
  CounterState copyWith({int? count, bool? isReverse}) {
    return CounterState(
      count: count ?? this.count,
      isReverse: isReverse ?? this.isReverse,
    );
  }
}



// BLOC statemanagement mai kisi bhi state ko mutate nahi kr sakte , that means state is immutable .
// isliye jab bhi state mai change karna ho naya state banta hai
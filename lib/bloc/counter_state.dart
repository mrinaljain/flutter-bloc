// counter_state.dart

class CounterState {
  final int count;
  final bool isReverse ;

  CounterState({required this.isReverse, required this.count,});


 // copywith kya karega pehle check  karega ki  nayi value pass kri hai kya otherwise  old value ko continue karega.
  CounterState copyWith ({
    int? count,
    bool? isReverse,
  }) {
    return CounterState(
      count: count ?? this.count,
      isReverse: isReverse ?? this.isReverse,
    );
  }
}



// BLOC statemanagement mai kisi bhi state ko mutate nahi kr sakte , that means state is immutable .
// isliye jab bhi state mai change karna ho naya state banta hai
// counter_event.dart
abstract class CounterEvent {}

class Increment extends CounterEvent {}

class Decrement extends CounterEvent {}

class Reset extends CounterEvent {}

class DoubleIncrement extends CounterEvent {}

class ToggleMethod extends CounterEvent {
  ToggleMethod(bool isReverse);
}

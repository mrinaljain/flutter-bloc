import 'package:bloc_app/bloc/counter_bloc.dart';
import 'package:bloc_app/bloc/counter_event.dart';
import 'package:bloc_app/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<CounterBloc>();
    return Scaffold(
      appBar: AppBar(
        title: Text("BLOC"),
        actions: [
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state) {
              return Switch(value: state.isReverse, onChanged: (currentValue){
                bloc.add(ToggleMethod(currentValue));
              });
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('You have pushed the button this many times:'),
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  '${state.count}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
          ],
        ),
      ),
      floatingActionButton: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          return FloatingActionButton(
            onPressed: () =>
                state.isReverse ? bloc.add(Decrement()) : bloc.add(Increment()),
            tooltip: 'Increment',
            child: state.isReverse
                ? const Icon(Icons.remove)
                : const Icon(Icons.add),
          );
        },
      ), 
    );
  }
}

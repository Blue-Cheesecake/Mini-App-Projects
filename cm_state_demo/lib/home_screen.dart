import 'package:cm_state_demo/bloc/counter_a/counter_a_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Main extends StatefulWidget {
  const Main({Key? key}) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter State Demo"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              BlocBuilder<CounterABloc, CounterAState>(
                builder: (context, state) {
                  return Text(
                    "${state.counter}",
                    style: const TextStyle(fontSize: 35),
                  );
                },
              ),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () =>
                  context.read<CounterABloc>().add(CounterAEventAdd()),
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () =>
                  context.read<CounterABloc>().add(CounterAEventReset()),
              child: const Icon(Icons.lock_reset),
            )
          ],
        ));
  }
}

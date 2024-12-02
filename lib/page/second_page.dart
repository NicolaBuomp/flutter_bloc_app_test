import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/bloc/counter_bloc.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second"),
        backgroundColor: Colors.blue,
      ),
      body:
          BlocBuilder<CounterBloc, CounterBlocState>(builder: (context, state) {
        return Center(
          child: TextButton(
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(CounterBlocEventDecrement());
              },
              child: Text(
                (state as CounterBlocStateValue).value.toString(),
                style: const TextStyle(fontSize: 100),
              )),
        );
      }),
    );
  }
}

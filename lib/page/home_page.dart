import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_app/bloc/counter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('BLoC'),
          backgroundColor: Colors.redAccent,
          actions: [
            IconButton(
              icon: Icon(
                Icons.arrow_right_alt,
                size: 30,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
          ]),
      body:
          BlocBuilder<CounterBloc, CounterBlocState>(builder: (context, state) {
        return Center(
          child: TextButton(
              onPressed: () {
                BlocProvider.of<CounterBloc>(context)
                    .add(CounterBlocEventIncrement());
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

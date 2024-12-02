import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterBlocEvent, CounterBlocState> {
  CounterBloc() : super(CounterBlocStateValue(0)) {
    on<CounterBlocEventIncrement>((event, emit) {
      final value = (state as CounterBlocStateValue).value;
      emit(CounterBlocStateValue(value + 1));
    });
    on<CounterBlocEventDecrement>((event, emit) {
      final value = (state as CounterBlocStateValue).value;
      emit(CounterBlocStateValue(value - 1));
    });
  }
}

abstract class CounterBlocEvent {}

class CounterBlocEventIncrement extends CounterBlocEvent {}

class CounterBlocEventDecrement extends CounterBlocEvent {}

abstract class CounterBlocState {}

class CounterBlocStateValue extends CounterBlocState {
  final int value;
  CounterBlocStateValue(this.value);
}

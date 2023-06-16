import 'package:bloc/bloc.dart';
import 'package:fluttertoast/fluttertoast.dart'; //instalar con flutter pub add fluttertoast o colocarlo en el pubspec

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  void increment() {
    if (state != 10) {
      emit(state + 1);
    } else {
      Fluttertoast.showToast(msg: "Ya es toda oiga", fontSize: 10.5);
    }
  }

  void decrement() {
    if (state != -0) {
      emit(state - 1);
    } else {
      Fluttertoast.showToast(msg: "Más pabajo ya no", fontSize: 10.5);
    }
  }

  void restart() => emit(0); //regresar el contador a cero
}

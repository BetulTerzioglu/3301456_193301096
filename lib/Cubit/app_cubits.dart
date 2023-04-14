import 'package:bloc/bloc.dart';
import 'package:mountain/Cubit/app_cubit_states.dart';
import 'package:mountain/Cubit/app_cubits.dart';

class AppCubits extends Cubit<CubitStates>{
  AppCubits():super(InitialState()){
    emit(WelcomeState());
  }
}
import 'package:equatable/equatable.dart';
import 'package:mountain/Cubit/app_cubit_states.dart';

abstract class CubitStates extends Equatable{

}

class InitialState extends CubitStates {
  late int x;
  @override
  // TODO: implement props
  List<Object> get props => [x];
}
class WelcomeState extends CubitStates {
  @override
  // TODO: implement props
  List<Object> get props => [];
}

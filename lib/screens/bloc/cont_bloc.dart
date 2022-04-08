import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'cont_state.dart';

class ContBloc extends Cubit<ContState> {
  ContBloc() : super(ContInitial());
  
  int bottomIndex = 0;
  bool visible = true;


  void bottomChangr(item){
    bottomIndex = item;
    (bottomIndex == 4 || bottomIndex == 2)  ? visible = false : visible = true;
    emit(BottomNavState());
  }

  int contButtom = 0;

  void contButtomAdd(index){
    contButtom = index;
    emit(ContButtomState());
  }
}

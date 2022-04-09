part of 'cont_bloc.dart';

@immutable
abstract class ContState {}

class ContInitial extends ContState {}

class BottomNavState extends ContState{
  BottomNavState();
}

class ContButtomState extends ContState{
  ContButtomState();
}

class LangState extends ContState{
  LangState();
}

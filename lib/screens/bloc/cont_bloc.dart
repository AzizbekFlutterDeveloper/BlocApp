import 'package:bloc/bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';
import 'package:get_storage/get_storage.dart';

part 'cont_state.dart';

class ContBloc extends Cubit<ContState> {
  ContBloc() : super(ContInitial());
  
  int bottomIndex = 0;
  bool visible = true;
   bool showCreate = false;

  void bottomChangr(item){
    bottomIndex = item;
    bottomIndex == 2 ? showCreate = true : showCreate = false;
    (bottomIndex == 4 || bottomIndex == 2)  ? visible = false : visible = true;
    emit(BottomNavState());
  }


  int contButtom = 0;

  void contButtomAdd(index){
    contButtom = index;
    emit(ContButtomState());
  }


  
  List langs = ["O‘zbek (Lotin)","Русский","English (USA)"];
  List newLang = [const Locale("uz"),const Locale("ru"),const Locale("en")];
  int langIndex = 2;
  String lang = "English (USA)";
  int oldIndex = 0;
  bool langBool = false;
  bool langDialog = false;

  void langAdd(v){
    oldIndex = langIndex;
    langIndex = v;
    langBool = true;
    lang = langs[langIndex];
    emit(LangState());
  }

  void addLangDialog(){
    langDialog = true;
    emit(LangState());
  }


  void langCancel(){
    langBool = false;
    langDialog = false;
    langIndex = oldIndex;
    emit(LangState());
  }

  void langDone(BuildContext context){
    context.setLocale(newLang[langIndex]);
    langDialog = false;
    emit(LangState());
  }

  int createIndex  = 0;
 

  void addCreate(i){
    showCreate = false;
    createIndex =i;
    emit(CreateState());
  }
}

import 'package:amaliyot/model/model.dart';
import 'package:hive/hive.dart';

class ContBox {
  static Box<NameModel> contBox() => Hive.box<NameModel>('contracts');
}
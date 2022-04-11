import 'package:flutter/material.dart';

class ConstColor {
  static Color green = const Color(0xff00A795);
  static Color black = const Color(0xff000000);
  static Color grey  = const Color(0xff2A2A2D);
  static Color textGrey = const Color(0xffA6A6A6);
  static Color textWhite = const Color(0xffE7E7E7);
}
List appBar = ["contracts","history","new_contract","saved","profile"];
List contract = ["fish","amount","last_invoice",""];
List farmCont = ["fisher’s_full_name","status_of_the_contract","amount","last_invoice","number_of_invoices","address_of_the_organization","ITN/IEC_of_the_organization","created_at"];
List profile = ["date_of_birth","phone_number","e_mail"];
List status = ["paid","in_process","rejected_by_payme","rejected_by_iQ"];
List face = ["physical", "legal"];
List flag = ["assets/icons/Group 8 (1).png","assets/icons/Group 8.png","assets/icons/US.png"];
Map name = {
  "id": 1,
  "name": "Azizbek Karimov",
  "amount": "1,200,000",
  "number": 6,
  "adress": "Chilonzor",
  "itn_iec": 1234567812,
  "create_at": "14:38, 2 February, 2021",
};
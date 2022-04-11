import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class FarmeContainer extends StatelessWidget {
  FarmeContainer({Key? key}) : super(key: key);

  final List list = [
    "Yoldosheva Ziyoda",
    "Paid",
    "1,200,000 UZS",
    "№ 156",
    "6",
    "Проспект Мирзо-Улугбек, дом 58, Мирзо-Улугбекский район, Ташкент",
    "5647520318",
    "14:38, 2 February, 2021"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal:getWidth(16),vertical: getHeight(20)),
      child: Column(
        children: [
          Container(
            height: getHeight(310),
            width: getWidth(343),
            padding: EdgeInsets.symmetric(
                horizontal: getWidth(20), vertical: getHeight(14)),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              color: ConstColor.grey,
            ),
            child: Column(
              children: [
                for (var i = 0; i < 5; i++)
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${farmCont[i]}".tr() + ":",
                            style: TextStyle(
                              color: ConstColor.textWhite,
                              fontSize: getWidth(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: getWidth(8)),
                          Text(
                            list[i],
                            style: TextStyle(
                              color: ConstColor.textGrey,
                              fontSize: getWidth(14),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getHeight(14)),
                    ],
                  ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${farmCont[5]}".tr() + ":",
                      style: TextStyle(
                        color: ConstColor.textWhite,
                        fontSize: getWidth(14),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: getWidth(5)),
                    Text(
                      list[5],
                      style: TextStyle(
                        color: ConstColor.textGrey,
                        fontSize: getWidth(14),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                for (var i = 0; i < 2; i++)
                  Column(
                    children: [
                      SizedBox(height: getHeight(14)),
                      Row(
                        children: [
                          Text(
                            "${farmCont[i + 6]}".tr() + ":",
                            style: TextStyle(
                              color: ConstColor.textWhite,
                              fontSize: getWidth(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: getWidth(8)),
                          Text(
                            list[i + 6],
                            style: TextStyle(
                              color: ConstColor.textGrey,
                              fontSize: getWidth(14),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
              ],
            ),
          ),
          SizedBox(height: getHeight(20)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xffFF426D).withOpacity(0.4),
                  fixedSize: Size(getWidth(164), getHeight(40))
                ),
                child: Text("delete_contract".tr(),
                  style: TextStyle(
                    color: Color(0xffFF426D),
                    fontSize: getWidth(14),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              ElevatedButton(

                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: ConstColor.green,
                  fixedSize: Size(getWidth(164), getHeight(40))
                ),
                child: Text("create_contract".tr(),
                  style: TextStyle(
                    color: ConstColor.textWhite,
                    fontSize: getWidth(14),
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

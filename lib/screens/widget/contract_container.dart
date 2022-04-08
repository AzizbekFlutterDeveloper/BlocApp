import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ContractContainer extends StatelessWidget {
  const ContractContainer({ Key? key }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getWidth(16),vertical: getHeight(6)),
      height: getHeight(148),
      width: getWidth(343),
      padding: EdgeInsets.all(getWidth(12)),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(6)),
        color: ConstColor.grey,
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset("assets/icons/DocumentW.svg",height: getHeight(15),color: ConstColor.green,),
              SizedBox(width: getWidth(9),),
              Text("№ 154",
                style: TextStyle(
                  color: ConstColor.textWhite,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w700,
                ),
              ),
              const Spacer(),
              Container(
                padding: EdgeInsets.symmetric(horizontal: getWidth(7),vertical: getHeight(3)),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: ConstColor.green.withOpacity(0.3),
                ),
                child: Center(
                  child: Text("Paid",
                    style: TextStyle(
                      color: ConstColor.green,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: getHeight(14)),
         for (var i = 0; i < 3; i++) Column(
           children: [
             Row(
                children: [
                  Text("${contract[i]}".tr() + ":",
                    style: TextStyle(
                      color: ConstColor.textWhite,
                      fontSize: getWidth(14),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(width: getWidth(8),),
                  Text("Yoldosheva Ziyoda",
                    style: TextStyle(
                      color: ConstColor.textGrey,
                      fontSize: getWidth(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: getHeight(5))
           ],
         ),
        ],
      ),
    );
  }
}
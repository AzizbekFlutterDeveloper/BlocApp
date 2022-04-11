import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PopapMenuContainer extends StatelessWidget {
  final List data;
  final double? height;
  final double? top;
  final bool? visible;
  const PopapMenuContainer({Key? key, required this.data,this.height, this.top, this.visible}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible ?? false,
      child: Container(
        margin: EdgeInsets.only(top: top?? getHeight(224)),
        padding: EdgeInsets.symmetric(horizontal:getWidth(23),vertical: getHeight(10)),
        height: height ?? getHeight(184),
        width: getWidth(343),
        decoration: BoxDecoration(
          color: ConstColor.grey,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          children: [
            for (var i = 0; i < data.length; i++)
              Column(
                children: [
                  SizedBox(height: getHeight(15)),
                  GestureDetector(
                    child: Row(
                      children: [
                        Text(
                          "${data[i]}".tr(),
                          style: TextStyle(
                            color: ConstColor.textWhite,
                            fontSize: getWidth(14),
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        SvgPicture.asset(
                          "assets/icons/ic_sharp-radio-button-checked.svg",
                          
                          color: ConstColor.textGrey,
                        ),
                      ],
                    ),
                    onTap: (){
                      
                    },
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

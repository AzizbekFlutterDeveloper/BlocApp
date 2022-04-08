import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomIcon extends StatelessWidget {
  final String? icon;
  final String? lable;
  final Function()? onTap;
  const BottomIcon({Key? key,required this.icon,required this.lable,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return GestureDetector(
      child: SizedBox(
        height: getHeight(70),
        width: getHeight(74),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon!, height: getHeight(20)),
            SizedBox(height: getHeight(5)),
            Text(
              lable!,
              style: TextStyle(
                color: ConstColor.textGrey,
                fontSize: getWidth(10),
              ),
            ),
          ],
        ),
      ),
      onTap: onTap,
    );
  }
}

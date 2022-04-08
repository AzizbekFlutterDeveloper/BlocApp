import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstColor.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity,height: getHeight(20)),
          Container(
            padding: EdgeInsets.all(getWidth(20)),
            height: getHeight(188),
            width: getWidth(343),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(6)),
              color: ConstColor.grey,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: ConstColor.green,
                      radius: getWidth(20),
                      child: SvgPicture.asset("assets/icons/Profile.svg"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
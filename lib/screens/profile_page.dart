import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/bloc/cont_bloc.dart';
import 'package:amaliyot/screens/widget/show_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key? key}) : super(key: key);
  final List myName = [
    "18.07.2003",
    "+998 90 068 37 03",
    "akarimovdev@gmail.com",
  ];

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstColor.black,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: double.infinity, height: getHeight(20)),
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
                      child: SvgPicture.asset(
                        "assets/icons/Profile.svg",
                        height: getHeight(25),
                        color: ConstColor.black,
                      ),
                    ),
                    SizedBox(width: getWidth(18)),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Azizbek Karimov",
                          style: TextStyle(
                            color: ConstColor.green,
                            fontSize: getWidth(16),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          "Flutter Develover • Najot Ta'lim",
                          style: TextStyle(
                            color: ConstColor.textWhite,
                            fontSize: getWidth(12),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: getHeight(23)),
                for (var i = 0; i < 3; i++)
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "${profile[i]}".tr() + ":",
                            style: TextStyle(
                              color: ConstColor.textWhite,
                              fontSize: getWidth(14),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(width: getWidth(8)),
                          Text(
                            myName[i],
                            style: TextStyle(
                              color: ConstColor.textGrey,
                              fontSize: getWidth(14),
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: getHeight(12)),
                    ],
                  ),
              ],
            ),
          ),
          GestureDetector(
            child: Container(
              margin: EdgeInsets.symmetric(vertical: getHeight(12)),
              height: getHeight(44),
              padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
              width: getWidth(343),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(6)),
                color: ConstColor.grey,
              ),
              child: Row(
                children: [
                  Text(
                    context.watch<ContBloc>().lang,
                    style: TextStyle(
                      color: ConstColor.textWhite,
                      fontSize: getWidth(14),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: getWidth(11),
                    backgroundImage: AssetImage(flag[context.watch<ContBloc>().langIndex]),
                  ),
                ],
              ),
            ),
            onTap: () {
             LangShowDialog.myShowDialog(context);
            },
          ),
        ],
      ),
    );
  }

  
}

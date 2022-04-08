import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/bloc/cont_bloc.dart';
import 'package:amaliyot/screens/contract_page.dart';
import 'package:amaliyot/screens/widget/bottom_nav_bar_icon.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return BlocProvider(
      create: (context) => ContBloc(),
      child: BlocConsumer<ContBloc,ContState>(
        listener: (context, state) {},
        builder: (context, state){
          return scaffold(context);
        },
      ),
    );
  }

  Scaffold scaffold(BuildContext context) {
    int index = context.watch<ContBloc>().bottomIndex;
    return Scaffold(
      backgroundColor: ConstColor.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: index == 2 ? const Color(0xff141416): ConstColor.black,
        title: Text("${appBar[index]}".tr()),
        leading: Image.asset("assets/icons/Ellipse 13.png"),
        actions: [
          Visibility(
            visible: context.watch<ContBloc>().visible,
            child: SizedBox(
              height: getHeight(20),
              width: getWidth(80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset("assets/icons/Filter.svg",height: getHeight(20)),
                  Container(height: getHeight(17),width: getWidth(2),color: ConstColor.textWhite),
                  SvgPicture.asset("assets/icons/zoom-2 1.svg",height: getHeight(20)),
                ],
              ),
            ),
          ),
          SizedBox(width: getWidth(20))
        ],
      ),
      body: ContractsPage(),
      bottomNavigationBar: Container(
        height: getHeight(70),
        width: getWidth(375),
        color: const Color(0xff141416),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomIcon(
              icon: index == 0 ? "assets/icons/DocumentW.svg":"assets/icons/Document.svg",
              lable: "contracts".tr(),
              onTap: (){
                context.read<ContBloc>().bottomChangr(0);
              },
            ),
            BottomIcon(
              icon: index == 1 ? "assets/icons/Time CircleW.svg":"assets/icons/Time Circle.svg",
              lable: "history".tr(),
              onTap: (){
                context.read<ContBloc>().bottomChangr(1);
              },
            ),
            BottomIcon(
              icon: index == 2 ? "assets/icons/PlusW.svg":"assets/icons/Plus.svg",
              lable: "new".tr(),
              onTap: (){
                context.read<ContBloc>().bottomChangr(2);
              },
            ),
            BottomIcon(
              icon: index == 3 ? "assets/icons/BookmarkW.svg":"assets/icons/Bookmark.svg",
              lable: "saved".tr(),
              onTap: (){
                context.read<ContBloc>().bottomChangr(3);
              },
            ),
            BottomIcon(
              icon: index == 4 ? "assets/icons/Profile.svg":"assets/icons/ProfileW.svg",
              lable: "profile".tr(),
              onTap: (){
                context.read<ContBloc>().bottomChangr(4);
              },
            ),
          ],
        ),
      ),
    );
  }
}

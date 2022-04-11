import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/bloc/cont_bloc.dart';
import 'package:amaliyot/screens/widget/popmenubuttom_container.dart';
import 'package:amaliyot/screens/widget/text_form_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewCreateContact extends StatelessWidget {
  const NewCreateContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(16), vertical: getHeight(20)),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                TextFormContainer(
                  name: "face".tr(),
                  icon: GestureDetector(
                    child: SvgPicture.asset(
                        "assets/icons/Arrow - Down Circle.svg",
                        color: ConstColor.textGrey),
                    onTap: () {
                      context.read<ContBloc>().faceUse();
                    },
                  ),
                ),
                TextFormContainer(
                  name: "fisher’s_full_name".tr(),
                  child: TextFormField(
                    style: TextStyle(
                      color: ConstColor.textWhite,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextFormContainer(
                  name: "address_of_the_organization".tr(),
                  child: TextFormField(
                    style: TextStyle(
                      color: ConstColor.textWhite,
                    ),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextFormContainer(
                  name: "inn".tr(),
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    style: TextStyle(
                      color: ConstColor.textWhite,
                    ),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                    ),
                  ),
                  icon: SvgPicture.asset(
                    "assets/icons/soroq.svg",
                    color: ConstColor.textGrey,
                  ),
                ),
                TextFormContainer(
                  name: "status_of_the_contract".tr(),
                  icon: GestureDetector(
                    child: SvgPicture.asset(
                        "assets/icons/Arrow - Down Circle.svg",
                        color: ConstColor.textGrey),
                    onTap: () {
                      context.read<ContBloc>().statusUse();
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              child: Column(
                children: [
                  PopapMenuContainer(
                    visible: context.watch<ContBloc>().faceVisible,
                    data: face,
                    height: getHeight(104),
                    top: getHeight(64),
                  ),
                  PopapMenuContainer(
                    top: getHeight(395),
                    visible: context.watch<ContBloc>().statusVisible,
                    data: status,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

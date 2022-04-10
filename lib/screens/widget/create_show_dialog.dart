import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/bloc/cont_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShowCreateContainer extends StatelessWidget {
  const ShowCreateContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      height: getHeight(190),
      width: getWidth(327),
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(20), vertical: getHeight(16)),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(8)),
        color: ConstColor.grey,
      ),
      child: Column(
        children: [
          Text(
            "what_do_you_want_to_create?".tr(),
            style: TextStyle(
              color: ConstColor.textWhite,
              fontSize: getWidth(16),
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: getHeight(22)),
          for (var i = 0; i < 2; i++)
            GestureDetector(
              child: Container(
                height: getHeight(46),
                width: getWidth(287),
                margin: EdgeInsets.symmetric(vertical: getHeight(6)),
                padding: EdgeInsets.symmetric(horizontal: getWidth(20)),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Color(0xff4E4E4E),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(i == 0
                        ? "assets/icons/Paper.svg"
                        : "assets/icons/Vector.svg"),
                    SizedBox(width: getHeight(15)),
                    Text(
                      i == 0 ? "contracts".tr() : "invoice".tr(),
                      style: TextStyle(
                        color: ConstColor.textWhite,
                        fontSize: getWidth(16),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              onTap: () {
                context.read<ContBloc>().addCreate(i);
              },
            ),
        ],
      ),
    );
  }
}

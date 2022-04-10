import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/bloc/cont_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LangShowDialog extends StatelessWidget {
  const LangShowDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: getWidth(10), vertical: getHeight(16)),
      height: getHeight(279),
      width: getWidth(327),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: ConstColor.grey,
      ),
      child: Column(
        children: [
          Text(
            "choose_a_language".tr(),
            style: TextStyle(
              color: ConstColor.textWhite,
            ),
          ),
          for (var i = 0; i < 3; i++)
            ListTile(
              leading: CircleAvatar(
                radius: getWidth(11),
                backgroundImage: AssetImage(flag[i]),
              ),
              title: Text(
                context.watch<ContBloc>().langs[i],
                style: TextStyle(
                  color: ConstColor.textWhite,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w400,
                ),
              ),
              trailing: SvgPicture.asset(
                "assets/icons/ic_sharp-radio-button-checked.svg",
                color: context.watch<ContBloc>().langs[i] ==
                        context.watch<ContBloc>().lang
                    ? ConstColor.green
                    : ConstColor.textGrey,
              ),
              onTap: () {
                context.read<ContBloc>().langAdd(i);
              },
            ),
          SizedBox(height: getHeight(32)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: context.watch<ContBloc>().langBool == false
                    ? null
                    : () {
                        context.read<ContBloc>().langCancel();
                      },
                style: ElevatedButton.styleFrom(
                  primary: ConstColor.green,
                  fixedSize: Size(getWidth(125), getHeight(37)),
                ),
                child: Text(
                  "cancel".tr(),
                  style: TextStyle(
                    color: ConstColor.textWhite,
                    fontSize: getWidth(14),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  context.read<ContBloc>().langDone(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: ConstColor.green,
                  fixedSize: Size(getWidth(125), getHeight(37)),
                ),
                child: Text(
                  "done".tr(),
                  style: TextStyle(
                    color: ConstColor.textWhite,
                    fontSize: getWidth(14),
                    fontWeight: FontWeight.w500,
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

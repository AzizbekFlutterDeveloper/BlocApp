import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:flutter/material.dart';

class TextFormContainer extends StatelessWidget {
  final String? name;
  final Widget? child;
  const TextFormContainer({Key? key, this.child, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          name ?? "",
          style: TextStyle(
            color: ConstColor.textGrey,
            fontSize: getWidth(14),
            fontWeight: FontWeight.w400,
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: getHeight(6), bottom: getHeight(16)),
          height: getHeight(44),
          width: getWidth(343),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(6)),
            border: Border.all(color: ConstColor.grey, width: getWidth(2)),
          ),
          child: child,
        ),
      ],
    );
  }
}

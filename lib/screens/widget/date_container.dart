import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:flutter/material.dart';

class DateContainer extends StatelessWidget {
  final Function()? onTap;
  final String? name;
  const DateContainer({ Key? key,this.name,this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: getHeight(37),
        width: getWidth(116),
        padding: EdgeInsets.symmetric(horizontal: getWidth(10)),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(5)),
          color: ConstColor.grey,
        ),
        child: Center(
          child: Row(
            children: [
              Text(name??" ",
                style: TextStyle(
                  color: ConstColor.textGrey,
                  fontSize: getWidth(14),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Spacer(),
              Icon(Icons.date_range,color: ConstColor.textGrey,size: getWidth(15))
            ],
          ),
        ),
      ),
      onTap: onTap,
    );
  }
}
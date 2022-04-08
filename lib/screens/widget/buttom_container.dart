import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/bloc/cont_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ButtomContainer extends StatelessWidget {
  final int? index;
  final String? name;
  const ButtomContainer({ Key? key, required this.index, required this.name }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.only(top: getHeight(32),left: getWidth(16),bottom: getHeight(20)),
        height: getHeight(33),
        width: getWidth(92),
        decoration: BoxDecoration(
          color: context.watch<ContBloc>().contButtom == index ?  ConstColor.green : ConstColor.black,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Center(
          child: Text(name??"",
            style: TextStyle(
              color: ConstColor.textWhite,
              fontSize: getWidth(15),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      onTap: (){
        context.read<ContBloc>().contButtomAdd(index);
      },
    );
  }
}
import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/widget/contract_container.dart';
import 'package:flutter/material.dart';

class SavedPage extends StatelessWidget {
  const SavedPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstColor.black,
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ContractContainer(index: index);
        },
      ),
    );
  }
}
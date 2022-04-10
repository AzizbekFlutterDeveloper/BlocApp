import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/widget/text_form_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewCreateContact extends StatelessWidget {
  const NewCreateContact({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getWidth(16),vertical: getHeight(20)),
      child: Column(
        children: [
          TextFormContainer(
            name: "face".tr(),
          ),
          TextFormContainer(
            name: "fisher’s_full_name".tr(),
          ),
          TextFormContainer(
            name: "address_of_the_organization".tr()
          ),
          TextFormContainer(
            name: "inn".tr()
          ),
          TextFormContainer(
            name: "status_of_the_contract".tr()
          ),

        ],
      ),
    );
  }
}
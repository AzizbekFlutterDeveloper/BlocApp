import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/widget/text_form_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/widgets.dart';

class NewCreateInvoice extends StatelessWidget {
  const NewCreateInvoice({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: getHeight(16),vertical: getHeight(20)),
      child: Column(
        children: [
          TextFormContainer(
            name: "Xizmat nomi",
          ),
          TextFormContainer(
            name: "Invoice summasi",
          ),
          TextFormContainer(
            name: "status_of_the_invoice".tr(),
          ),
        ],
      ),
    );
  }
}
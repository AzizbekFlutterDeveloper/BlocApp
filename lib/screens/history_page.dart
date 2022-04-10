import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/widget/contract_container.dart';
import 'package:amaliyot/screens/widget/date_container.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: ConstColor.black,
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: getHeight(109),
              width: getWidth(375),
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getWidth(16), vertical: getHeight(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "date".tr(),
                      style: TextStyle(
                        color: ConstColor.textGrey,
                        fontSize: getWidth(14),
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        const DateContainer(name: "16.02.2021"),
                        Container(
                          color: ConstColor.textWhite,
                          width: getWidth(8),
                          height: getHeight(2),
                          margin:
                              EdgeInsets.symmetric(horizontal: getWidth(12)),
                        ),
                        const DateContainer(name: "To")
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisExtent: getHeight(155)),
            delegate: SliverChildBuilderDelegate(
              (context,index){
                return ContractContainer(index: index);
              }
            ),
          )
        ],
      ),
    );
  }
}

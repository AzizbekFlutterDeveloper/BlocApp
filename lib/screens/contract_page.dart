import 'dart:math';

import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/core/size_config/size_config.dart';
import 'package:amaliyot/screens/bloc/cont_bloc.dart';
import 'package:amaliyot/screens/widget/buttom_container.dart';
import 'package:amaliyot/screens/widget/contract_container.dart';
import 'package:amaliyot/screens/widget/farme_containder.dart';
import 'package:calendar_agenda/calendar_agenda.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ContractsPage extends StatelessWidget {
  ContractsPage({Key? key}) : super(key: key);
  final CalendarAgendaController _calendarAgendaControllerAppBar =
      CalendarAgendaController();
  final CalendarAgendaController _calendarAgendaControllerNotAppBar =
      CalendarAgendaController();


  Random random = Random();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.black,
      body: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              SizedBox(
                height: getHeight(148),
                child: CalendarAgenda(
                  controller: _calendarAgendaControllerAppBar,
                  appbar: false,
                  selectedDayPosition: SelectedDayPosition.center,
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                  fullCalendarScroll: FullCalendarScroll.horizontal,
                  selectedDateColor: ConstColor.textWhite,
                  locale: 'uz',
                  backgroundColor: ConstColor.grey,
                  initialDate: DateTime.now(),
                  firstDate: DateTime.now().subtract(const Duration(days: 140)),
                  lastDate: DateTime.now().add(const Duration(days: 60)),
                  events: List.generate(
                      100,
                      (index) => DateTime.now()
                          .subtract(Duration(days: index * random.nextInt(5)))),
                  onDateSelected: (date) {
                    print(date);
                  },
                ),
              ),
              Positioned(
                child: Container(
                  height: getHeight(57),
                  width: getWidth(130),
                  color: ConstColor.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getHeight(510),
            width: getWidth(375),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      ButtomContainer(
                        index: 0, 
                        name: "contracts".tr(),
                      ),
                      ButtomContainer(
                        index: 1, 
                        name: "invoice".tr(),
                      ),
                    ],
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return context.watch<ContBloc>().contBool[index] == false? GestureDetector(
                          child: ContractContainer(
                            index: index,
                          ),
                          onTap: (){
                             context.read<ContBloc>().addFarmCont(length: 10,index:index);
                          },
                        ): GestureDetector(child: FarmeContainer(),onTap: (){
                          context.read<ContBloc>().removeFarmCont(index:index);
                        },);
                    },childCount: 10,
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

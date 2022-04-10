import 'package:amaliyot/core/constans/app_colors.dart';
import 'package:amaliyot/screens/bloc/cont_bloc.dart';
import 'package:amaliyot/screens/create_page/new_contacts_page.dart';
import 'package:amaliyot/screens/create_page/new_invoice_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewContractPage extends StatelessWidget {
 NewContractPage({ Key? key }) : super(key: key);
  final List _pages = [NewCreateContact(),NewCreateInvoice()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.black,
      body: _pages[context.watch<ContBloc>().createIndex],
    );
  }
}
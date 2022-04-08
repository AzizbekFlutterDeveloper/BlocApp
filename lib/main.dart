import 'package:amaliyot/model/model.dart';
import 'package:amaliyot/screens/home_page.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<NameModel>(NameModelAdapter());
  await Hive.openBox<NameModel>("contracts");

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en"),Locale("ru"),Locale("uz")],
      path: "assets/lang",
      fallbackLocale: const Locale("en"),
      startLocale: const Locale("en"),
      child: const MyApp(),
    )
  );
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}

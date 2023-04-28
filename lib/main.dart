import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'theme/themedata.dart';
import 'view/pages/dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3: true,
            primarySwatch: CustomTheme.lightPrimarySwatch,
            scaffoldBackgroundColor: Color(0xFFF0F0F0),
            appBarTheme: ThemeData.light().appBarTheme.copyWith(backgroundColor: Color(0xFFF0F0F0))),
        home: const Dashboard());
  }
}

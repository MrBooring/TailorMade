import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/routes.dart';
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
          brightness: Brightness.light,

          // primarySwatch: CustomTheme.lightPrimarySwatch,
          // colorSchemeSeed: Colors.blue,
          colorScheme: ColorScheme(
            brightness: Brightness.light,
            primary: Color(0xFF4CAF50),
            onPrimary: Color(0xFFFFFFFF),
            secondary: Color(0xFFE91E63),
            onSecondary: Color(0xFFFFFFFF),
            error: Color(0xFFB00020),
            onError: Color(0xFFFFFFFF),
            background: Color(0xFFFFFFFF),
            onBackground: Color(0xFF212121),
            surface: Color(0xFFEEEEEE),
            onSurface: Color(0xFF212121),
          ),
          scaffoldBackgroundColor: Color.fromARGB(255, 237, 242, 247),
          appBarTheme: ThemeData.light().appBarTheme.copyWith(
                backgroundColor: Color.fromARGB(230, 233, 56, 115),
              ),
        ),
        initialRoute: "/dashboard",
        getPages: routes,
        home: const Dashboard());
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'Shared/shared_obj.dart';
import 'UI/main_screen.dart';
import 'Utilities/routing.dart';

void main() {
  runApp(
    ModularApp(
      module: AppModule(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(425, 1000),
      builder: (_, __) => MaterialApp(
        theme: ThemeData(fontFamily: 'dubai'),
        navigatorKey: SharedObj.navigatorKey,
        debugShowCheckedModeBanner: false,
        title: 'E-Commerce',
        initialRoute: MainScreen.routeName,

        // locale: appLan.appLocal,
      ).modular(),
    );
  }
}

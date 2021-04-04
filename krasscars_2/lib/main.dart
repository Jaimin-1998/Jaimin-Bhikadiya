import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'constants/constants.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: Messages(),
      locale: Locale('en', 'US'),
      fallbackLocale: Locale('en', 'US'),
      title: 'KrassCars',
      navigatorObservers: [BotToastNavigatorObserver()],
      builder: BotToastInit(),
      debugShowCheckedModeBanner: false,
      theme: AppThemes.lightFontTheme,
      home: Login(),
      // initialRoute: "/",
      // getPages: AppRoutes.routes,
    );
  }
}

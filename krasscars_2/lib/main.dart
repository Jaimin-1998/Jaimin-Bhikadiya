import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:krasscars_2/ui/advance_search/advance_search.dart';
import 'package:krasscars_2/ui/book_test_drive/book_test_drive.dart';
import 'package:krasscars_2/ui/login/login.dart';
import 'package:krasscars_2/ui/profile/profile_edit.dart';
import 'package:krasscars_2/ui/review_rating/reviewandrating.dart';
import 'constants/constants.dart';
import './ui/manufacture/manufacture_filter_details.dart';

void main() async {
  await GetStorage.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    MaterialApp(
      builder: (context, child) {
        return MediaQuery(
          child: child,
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        );
      },
    );
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

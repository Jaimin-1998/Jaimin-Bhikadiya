// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:krasscars/constants/app_themes.dart';
// import 'package:krasscars/constants/images.dart';
// import 'package:krasscars/ui/login/login_dashboard.dart';
//
// class SplashUI extends StatefulWidget {
//   const SplashUI({Key key}) : super(key: key);
//
//   @override
//   _SplashUIState createState() => _SplashUIState();
// }
//
// class _SplashUIState extends State<SplashUI> {
//   @override
//   void initState() {
//     super.initState();
//     validateSession();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       alignment: Alignment.center,
//       children: [
//         Scaffold(
//           backgroundColor: AppThemes.lightWhiteColor,
//           appBar: AppBar(
//             backgroundColor: AppThemes.lightButtonBackGroundColor,
//             elevation: 0,
//           ),
//           body: Container(
//             child: Align(
//               alignment: Alignment.topCenter,
//               child: Image.asset(AllImages.splash_header, width: double.infinity, fit: BoxFit.fitWidth,),
//             ),
//           ),
//         ),
//         Container(
//           padding: EdgeInsets.only(left: 25, right: 25),
//             child: Image.asset(AllImages.logo)
//         )
//       ],
//     );
//   }
//
//   Future<void> validateSession() async {
//     await Future.delayed(Duration(seconds: 2));
//     Get.off(LoginDashboard());
//   }
// }

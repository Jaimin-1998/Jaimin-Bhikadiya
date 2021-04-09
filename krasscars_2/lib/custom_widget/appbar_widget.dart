import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hidden_drawer_menu/controllers/simple_hidden_drawer_controller.dart';
import 'package:krasscars_2/constants/constants.dart';

Widget AppBarWidget(BuildContext context,String title,bool iconFilter){
  return   Container(
    height: MediaQuery.of(context).size.width * 0.35,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: AppThemes.clrPrimary,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45),
            bottomRight: Radius.circular(45))),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              // SimpleHiddenDrawerController.of(context).toggle();

              },
              child: Padding(
                padding: EdgeInsets.only(top: 7,bottom: 8,right: 8),
                child: Image.asset(AllImages.ic_backButton),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                  color: AppThemes.clrBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: AppFonts.size_triple_extra_large),
            ),
          ),
          iconFilter==true?  Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: (){
              },
              child: Image.asset(AllImages.ic_filter),
            ),
          ):Container(),
        ],
      ),
    ),

  );
}

Widget AppBarWidget2(BuildContext context,String title,bool iconFilter,bool isFilter,{double height}){
  return   Container(
    height: height ==null? MediaQuery.of(context).size.width * 0.35:height,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: AppThemes.clrPrimary,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45),
            bottomRight: Radius.circular(45))),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
                // SimpleHiddenDrawerController.of(context).toggle();

              },
              child: Padding(
                padding: EdgeInsets.only(top: 7,bottom: 8,right: 8),
                child: Image.asset(AllImages.ic_backButton),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                  color: AppThemes.clrBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: AppFonts.size_triple_extra_large,
                  fontFamily: AppFonts.PoppinsBold),
            ),
          ),
          iconFilter==true?  Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: (){
              },
              child: isFilter==false? Image.asset(AllImages.ic_filter):Image.asset(AllImages.ic_filter_close),
            ),
          ):Container(),
        ],
      ),
    ),

  );
}

// ignore: non_constant_identifier_names
Widget AppBarWithNotificationWidget(BuildContext context,String title){
  return   Container(
    height: MediaQuery.of(context).size.width * 0.45,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: AppThemes.clrPrimary,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40))),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 45, 20, 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child:   GestureDetector(
              onTap: (){
                SimpleHiddenDrawerController.of(context).toggle();
              },
              child: Image.asset(
                AllImages.ic_drawer,
                height: 54,
                width: 54,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 60,bottom: 0),
            child: Align(
              alignment: Alignment.topRight,
              child: GestureDetector(
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => SellerEdit()));
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: AppThemes.clrBlack, width: 3),
                      image: DecorationImage(
                          image: AssetImage(
                              AllImages.img_user_profile),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Image.asset(
              AllImages.ic_notification,
              height: 40,
              width: 40,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.width *0.10),
              child: Text(
                title,
                style: TextStyle(
                    color: AppThemes.clrBlack,
                    fontWeight: FontWeight.bold,
                    fontSize: AppFonts.size_triple_extra_large),
              ),
            ),
          ),
        ],
      ),
    ),

  );
}

Widget AppBarWidget1(BuildContext context,String title,bool iconFilter){
  return   Container(
    height: MediaQuery.of(context).size.width * 0.70,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: AppThemes.clrPrimary,
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(45),
            bottomRight: Radius.circular(45))),
    child: Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
                // SimpleHiddenDrawerController.of(context).toggle();

              },
              child: Padding(
                padding: EdgeInsets.only(top: 7,bottom: 8,right: 8),
                child: Image.asset(AllImages.ic_backButton),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              title,
              style: TextStyle(
                  color: AppThemes.clrBlack,
                  fontWeight: FontWeight.bold,
                  fontFamily: AppFonts.PoppinsSemiBold,
                  fontSize: AppFonts.size_triple_extra_large),
            ),
          ),
          iconFilter==true?  Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: (){
              },
              child: Image.asset(AllImages.ic_filter),
            ),
          ):Container(),
        ],
      ),
    ),

  );
}

// ignore: non_constant_identifier_names
// Widget AppBarWithNotificationWidget(BuildContext context,String title){
//   return   Container(
//     height: MediaQuery.of(context).size.width * 0.45,
//     width: MediaQuery.of(context).size.width,
//     decoration: BoxDecoration(
//         color: AppThemes.clrPrimary,
//         borderRadius: BorderRadius.only(
//             bottomLeft: Radius.circular(40),
//             bottomRight: Radius.circular(40))),
//     child: Padding(
//       padding: const EdgeInsets.fromLTRB(20, 45, 20, 10),
//       child: Stack(
//         children: [
//           Align(
//             alignment: Alignment.topLeft,
//             child:   GestureDetector(
//               onTap: (){
//                 SimpleHiddenDrawerController.of(context).toggle();
//               },
//               child: Image.asset(
//                 AllImages.ic_drawer,
//                 height: 54,
//                 width: 54,
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(right: 60,bottom: 0),
//             child: Align(
//               alignment: Alignment.topRight,
//               child: GestureDetector(
//                 onTap: () {
//                   // Navigator.push(context, MaterialPageRoute(builder: (context) => SellerEdit()));
//                 },
//                 child: Container(
//                   height: 45,
//                   width: 45,
//                   decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       border: Border.all(
//                           color: AppThemes.clrBlack, width: 3),
//                       image: DecorationImage(
//                           image: AssetImage(
//                               AllImages.img_user_profile),
//                           fit: BoxFit.cover)),
//                 ),
//               ),
//             ),
//           ),
//           Align(
//             alignment: Alignment.topRight,
//             child: Image.asset(
//               AllImages.ic_notification,
//               height: 40,
//               width: 40,
//               fit: BoxFit.cover,
//             ),
//           ),
//           Align(
//             alignment: Alignment.bottomCenter,
//             child: Padding(
//               padding:  EdgeInsets.only(bottom: MediaQuery.of(context).size.width *0.10),
//               child: Text(
//                 title,
//                 style: TextStyle(
//                     color: AppThemes.clrBlack,
//                     fontWeight: FontWeight.bold,
//                     fontSize: AppFonts.size_triple_extra_large),
//               ),
//             ),
//           ),
//         ],
//       ),
//     ),
//
//   );
// }
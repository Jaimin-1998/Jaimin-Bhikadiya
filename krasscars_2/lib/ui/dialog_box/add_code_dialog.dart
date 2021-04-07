import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';

pleaseAddCodeDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.95,
              decoration:
              BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Center(
                      child: Text(
                        AppString.strPleaseAddCode,
                        style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontFamily: AppFonts.PoppinsBold,
                            fontSize: AppFonts.size_extra_large),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 15, left: 15),
                    child: Text(
                      'We just send code to your mobile number *** 545',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: AppFonts.size_medium,
                          fontFamily: AppFonts.PoppinsRegular,
                          color: AppThemes.clrGray),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50, bottom: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _box(context, controller1),
                        _box(context, controller2),
                        _box(context, controller3),
                        _box(context, controller4)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          elevation: 8,
                          child: ButtonWidget(
                            width: MediaQuery.of(context).size.width * 0.33,
                            color: AppThemes.clrWhite,
                            shadowColor: AppThemes.clrWhite,
                            onPressed: () {},
                            text: Text(
                              AppString.strCancel,
                              style: TextStyle(
                                  color: AppThemes.clrBlack,
                                  fontWeight: FontWeight.bold,
                                  fontSize: AppFonts.size_medium_large_extra,
                                  fontFamily: AppFonts.PoppinsSemiBold,
                                  letterSpacing: 0.80),
                            ),
                          ),
                        ),
                        ButtonWidget(
                          width: MediaQuery.of(context).size.width * 0.33,
                          color: AppThemes.greenColor,
                          shadowColor: AppThemes.greenColor,
                          onPressed: () {},
                          text: Text(
                            AppString.strConfirm,
                            style: TextStyle(
                                color: AppThemes.clrWhite,
                                fontWeight: FontWeight.bold,
                                fontSize: AppFonts.size_medium_large_extra,
                                fontFamily: AppFonts.PoppinsSemiBold,
                                letterSpacing: 0.80),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
      });
}

TextEditingController controller1 = TextEditingController();
TextEditingController controller2 = TextEditingController();
TextEditingController controller3 = TextEditingController();
TextEditingController controller4 = TextEditingController();


Widget _box(BuildContext context, TextEditingController controller) {
  return Flexible(
    flex: 2,
    child: Container(
      height: 50,
      width: 50,
      margin: EdgeInsets.symmetric(horizontal: 3),
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey),
        keyboardType: TextInputType.number,
        controller: controller,
        maxLength: 1,
        decoration: InputDecoration(
            border: InputBorder.none,
            counterText: '',
            hintStyle: TextStyle(
                fontWeight: FontWeight.normal, color: AppThemes.clrGray),
            contentPadding: const EdgeInsets.all(0)),
        onChanged: (str) {
          if (controller == controller1) {
          } else {
            if (str.length == 0) {
              FocusScope.of(context).previousFocus();
            }
          }

          if (controller == controller4) {
          } else {
            if (str.length == 1) {
              FocusScope.of(context).nextFocus();
            }
          }
        },
      ),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          border: Border.all(color: AppThemes.clrTransparent, width: 2),
          borderRadius: BorderRadius.circular(10)),
    ),
  );
}
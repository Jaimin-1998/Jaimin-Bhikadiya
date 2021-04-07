import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';

confirmDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(15.0))),
            child: Container(
              height: MediaQuery.of(context).size.width * 0.60,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 10),
                    child: Center(
                      child: Text(
                        AppString.strConfirm,
                        style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontFamily: AppFonts.PoppinsBold,
                            fontSize: AppFonts.size_extra_large),
                      ),
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 1,
                      width: 150,
                      color: AppThemes.clrGray,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, right: 15, left: 15),
                    child: Text(
                      'Are you sure to Deactivate this account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: AppFonts.size_medium,
                          fontFamily: AppFonts.PoppinsRegular,
                          color: AppThemes.clrGray),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20, left: 15, right: 15),
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
                            AppString.strOk,
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

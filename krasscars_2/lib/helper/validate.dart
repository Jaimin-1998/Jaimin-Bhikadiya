import 'dart:convert';
import 'dart:io';
import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/cupertino_loader.dart';


String validateName(String value) {
  if (value.isEmpty)
    return AppString.strPleaseEnterUserName;
  else
    return null;
}

String validateMobileNumber(String value) {
  if (value.isEmpty)
    return AppString.strPleaseEnterMobileNumber;
  else if (value.length < 10 && value.length > 10) {
    return AppString.strMobileNumberMustTen;
  } else
    return null;
}

String validateAddress(String value) {
  if (value.isEmpty)
    return AppString.strPleaseEnterAddress;
  else
    return null;
}

String validateCity(String value) {
  if (value.isEmpty)
    return AppString.strPleaseEnterCity;
  else
    return null;
}

String validateShowroom(String value) {
  if (value.isEmpty)
    return AppString.strPleaseEnterShowroom;
  else
    return null;
}

String validateDescription(String value) {
  if (value.isEmpty)
    return AppString.strPleaseEnterdescription;
  else
    return null;
}

String validatePwd(String value) {
// Indian Mobile number are of 10 digit only
  if (value.isEmpty)
    return AppString.strPasswordRequired;
  else
    return null;
}

// ignore: missing_return
String validateOtp(value) {
// add your custom validation here.
  if (value.isEmpty) {
    return AppString.strPleaseEnterPin;
  }
  if (value.length < 6) {
    return AppString.strPasswordMustCharater;
  }
  return null;
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.isEmpty || !regex.hasMatch(value))
    return AppString.strEnterValidEmailId;
  else
    return null;
}

String validatePassword(String value) {
  if (value.isEmpty) {
    return AppString.strPleaseEnterPassword;
  }
  if (value.length < 6) {
    return AppString.strPasswordMustCharater;
  }
  return null;
}

/*Future<bool> onWillPops(BuildContext context) {
  return showDialog(
        context: context,
        child: AlertDialog(
          title: Text(AppString.strAreYouSure),
          content: Text(AppString.strExitApp),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.of(context).pop(false),
              child: Text(AppString.strNo),
            ),
            FlatButton(
              onPressed: () => SystemNavigator.pop(),
              child: Text(AppString.strYes),
            ),
          ],
        ),
      ) ??
      false;
}*/

void showAlert(BuildContext context, String strMessage, String strTitle,
    String strButton) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            title: Text(strTitle),
            content: Text(strMessage),
            actions: <Widget>[
              FlatButton(
                  child: new Text(strButton),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ));
}

Future<bool> checkInternetConnect() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  } on SocketException catch (_) {
    return false;
  }
}

void showAlertMsg(BuildContext context, String _msg) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            // title: Text(AppString.strAlert),
            content: Text(_msg),
            actions: <Widget>[
              FlatButton(
                  // child: new Text(AppString.strClose),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
            ],
          ));
}

void onLoading(BuildContext context, String strMessage) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return Dialog(
        backgroundColor: AppThemes.clrTransparent,
        child: Container(
          height: 100,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                decoration: new BoxDecoration(
                    color: AppThemes.clrWhite,
                    borderRadius: new BorderRadius.all(Radius.circular(10.0))),
                padding: EdgeInsets.all(35),
                child: CupertinoLoader(
                    15, context, strMessage),
              )
            ],
          ),
        ),
      );
    },
  );
}

void showErrorToast(BuildContext con, String msg) {
  Scaffold.of(con).showSnackBar(new SnackBar(
      backgroundColor: AppThemes.clrInValidate,
      content: Container(
        height: 30,
        child: Text(
          msg,
          style: new TextStyle(
              fontSize: 15.0,
              color: AppThemes.clrWhite,
              fontWeight: FontWeight.w500),
        ),
        alignment: Alignment.center,
      )));
}

void showToast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppThemes.clrLightGreen,
      textColor: Colors.white,
      fontSize: 16.0);
}


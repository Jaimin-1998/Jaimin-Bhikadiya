import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//CupertinoActivityIndicator

// ignore: non_constant_identifier_names
Widget CupertinoLoader(
    double radius, BuildContext context, String strMessage) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Container(
        alignment: Alignment.center,
        child: SizedBox(
          height: radius,
          width: radius,
          child: CircularProgressIndicator(),
        ),
      ),
      (strMessage != "")
          ? Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: 15),
              child: Text(
                strMessage,
                style: TextStyle(
                    fontSize: (radius == 10) ? 15 : 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          : Container()
    ],
  );
}

// ignore: non_constant_identifier_names
Widget CupertinoImageLoader(double radius, Color color) {
  return Container(
    alignment: Alignment.center,
    child: SizedBox(
      height: radius,
      width: radius,
      child: CircularProgressIndicator(
          valueColor: new AlwaysStoppedAnimation<Color>(color)),
    ),
  );
}

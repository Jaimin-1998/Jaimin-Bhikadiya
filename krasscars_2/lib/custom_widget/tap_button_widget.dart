import 'package:flutter/material.dart';

Widget buttonForSelection(
   BuildContext context, Color color, String text, Color textColor, Function onTap) {
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 12, right: 12),
      height: 55,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(30)),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              color: textColor, fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
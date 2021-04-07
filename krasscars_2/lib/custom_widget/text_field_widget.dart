import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:krasscars_2/constants/AppFonts.dart';
import 'package:krasscars_2/constants/app_themes.dart';

Widget inputTextField(
    TextEditingController controller,
    FormFieldValidator<String> validator,
    String hintTxt,
    TextInputType inputType,
    EdgeInsetsGeometry padd,
    bool isPassword,
    {Color bgColor,
    Widget prefixIcon,
    Widget suffixIcon,
    int maxLines}) {
  return Container(
    margin: padd,
    height: 67,
    child: TextFormField(
      maxLines: maxLines != null ? maxLines : 1,
      style: TextStyle(color: AppThemes.clrBlack),
      controller: controller,
      obscureText: isPassword,
      validator: validator,
      keyboardType: inputType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon != null ? prefixIcon : Container(),
        suffixIcon: suffixIcon != null ? suffixIcon : null,
        contentPadding: EdgeInsets.only(left: 20),
        hintText: hintTxt,
        hintStyle: TextStyle(color: AppThemes.clrGray),
        filled: true,
        fillColor: (bgColor != null) ? bgColor : AppThemes.clrEdittextCommonBG,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
    ),
  );
}

Widget textField(
    BuildContext context, TextEditingController controller, String hintText, double width) {
  return Container(
    alignment: Alignment.center,
    width: width,
    //  height: 60.0,
    child: TextField(
      controller: controller,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15),
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: AppFonts.size_medium,
            fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    ),
  );
}

Widget maxLinesTextField(BuildContext context, TextEditingController controller,
    String hintText, int maxLines) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    //  height: 60.0,
    child: TextField(
      controller: controller,
      maxLines: maxLines == null ? 1 : maxLines,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(left: 15, top: 20),
        hintText: hintText,
        hintStyle: TextStyle(
            color: Colors.grey[500],
            fontSize: AppFonts.size_medium,
            fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    ),
  );
}

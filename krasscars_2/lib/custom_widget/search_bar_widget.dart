import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/app_themes.dart';
import 'package:krasscars_2/constants/images.dart';

Widget searchBar(TextEditingController controller, String hintText) {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Container(
      margin: EdgeInsets.symmetric(horizontal: 35),
      height: 67,
      child: TextFormField(
        style: TextStyle(color: AppThemes.clrBlack),
        controller: controller,
        decoration: InputDecoration(
          //  prefixIcon: prefixIcon != null ? prefixIcon : Container(),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              AllImages.ic_search,
              height: 20,
              width: 20,
            ),
          ),
          contentPadding: EdgeInsets.only(left: 20),
          hintText:hintText,
          hintStyle: TextStyle(color: AppThemes.clrGray),
          filled: true,
          fillColor: AppThemes.clrWhite,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
      ),
    ),
  );
}
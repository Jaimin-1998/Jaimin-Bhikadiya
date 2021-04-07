import 'package:flutter/material.dart';
import '../custom_widget/appbar_widget.dart';
import '../constants/constants.dart';

class ReviewAndRating extends StatefulWidget {
  @override
  _ReviewAndRatingState createState() => _ReviewAndRatingState();
}

class _ReviewAndRatingState extends State<ReviewAndRating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBarWidget1(context, AppString.strReViewandRating, false)
          ],
        ),
      ),
    );
  }
}

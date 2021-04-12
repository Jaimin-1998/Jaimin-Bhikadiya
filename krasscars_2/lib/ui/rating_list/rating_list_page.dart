import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:percent_indicator/percent_indicator.dart';

class RatingList extends StatefulWidget {
  @override
  _RatingListState createState() => _RatingListState();
}

class _RatingListState extends State<RatingList> {
  double starRating = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Stack(
                children: [
                  AppBarWidget1(context, AppString.strRatingList, false),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.30,
                        bottom: 50,
                        left: 20,
                        right: 20),
                    child: Card(
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              AppString.str12CustomerReviews,
                              style: TextStyle(
                                  fontSize: AppFonts.size_small_medium,
                                  fontFamily: AppFonts.PoppinsRegular),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  RatingBar.builder(
                                    itemSize: 25,
                                    itemCount: 5,
                                    initialRating: 5,
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                    allowHalfRating: true,
                                    itemPadding:
                                        EdgeInsets.symmetric(horizontal: 1.0),
                                    itemBuilder: (context, _) => Icon(
                                      Icons.star,
                                      color: AppThemes.greenColor,
                                    ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                      setState(() {
                                        starRating = rating;
                                      });

                                      print('starRating: $starRating');
                                    },
                                  ),
                                  Text(
                                    '5.0 out of 5 stars',
                                    style: TextStyle(
                                        color: AppThemes.greenColor,
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.str5Stars,
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                  LinearPercentIndicator(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    lineHeight: 8,
                                    percent: 0.5,
                                    backgroundColor: AppThemes.greenLightColor,
                                    progressColor: AppThemes.greenColor,
                                  ),
                                  Text(
                                    '50.0 %',
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.str4Stars,
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                  LinearPercentIndicator(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    lineHeight: 8,
                                    percent: 0.5,
                                    backgroundColor: AppThemes.greenLightColor,
                                    progressColor: AppThemes.greenColor,
                                  ),
                                  Text(
                                    '0.0 %',
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.str3Stars,
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                  LinearPercentIndicator(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    lineHeight: 8,
                                    percent: 0.5,
                                    backgroundColor: AppThemes.greenLightColor,
                                    progressColor: AppThemes.greenColor,
                                  ),
                                  Text(
                                    '0.0 %',
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.str2Stars,
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                  LinearPercentIndicator(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    lineHeight: 8,
                                    percent: 0.5,
                                    backgroundColor: AppThemes.greenLightColor,
                                    progressColor: AppThemes.greenColor,
                                  ),
                                  Text(
                                    '0.0 %',
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    AppString.str1Stars,
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                  LinearPercentIndicator(
                                    width: MediaQuery.of(context).size.width * 0.5,
                                    lineHeight: 8,
                                    percent: 0.5,
                                    backgroundColor: AppThemes.greenLightColor,
                                    progressColor: AppThemes.greenColor,
                                  ),
                                  Text(
                                    '0.0 %',
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsRegular,
                                        fontSize: AppFonts.size_small_medium),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppString.strVeryNice,
                              style: TextStyle(
                                  color: AppThemes.clrBlack,
                                  fontFamily: AppFonts.PoppinsRegular,
                                  fontSize: AppFonts.size_small_medium),
                            ),
                            RatingBar.builder(
                              itemSize: 18,
                              itemCount: 5,
                              initialRating: 5,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemPadding:
                              EdgeInsets.symmetric(horizontal: 2.0),
                              itemBuilder: (context, _) => Icon(
                                Icons.star,
                                color: AppThemes.greenColor,
                              ),
                              onRatingUpdate: (rating) {
                                print(rating);
                                setState(() {
                                  starRating = rating;
                                });

                                print('starRating: $starRating');
                              },
                            ),

                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                      height: 50,
                                      width: 50,
                                      // margin: EdgeInsets.only(bottom: 30, left: 20),
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                              color: AppThemes.clrWhite, width: 5)),
                                      child: Image.asset(
                                        AllImages.img_user,
                                        fit: BoxFit.cover,
                                      )),
                                  SizedBox(width: 20),
                                  Text(
                                    'PS Ad Motors',
                                    style: TextStyle(
                                        color: AppThemes.clrBlack,
                                        fontSize: AppFonts.size_small_medium,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: AppFonts.PoppinsRegular),
                                  ),
                                ],
                              ),

                              Text(
                                '9 months ago',
                                style: TextStyle(
                                    color: AppThemes.clrGray,
                                    fontSize: AppFonts.size_small_medium,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: AppFonts.PoppinsRegular),
                              ),
                            ],
                          ),
                        ),
                        index==2?Container() :Padding(
                          padding: const EdgeInsets.only(bottom: 20,top: 5),
                          child: Divider(color: AppThemes.clrGray,height: 3),
                        )
                      ],
                    ),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}

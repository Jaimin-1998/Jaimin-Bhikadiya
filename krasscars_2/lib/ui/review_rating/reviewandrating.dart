import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';

class ReviewAndRating extends StatefulWidget {
  @override
  _ReviewAndRatingState createState() => _ReviewAndRatingState();
}

class _ReviewAndRatingState extends State<ReviewAndRating> {
  double starRating = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  AppBarWidget1(context, AppString.strReViewandRating, false),
                  Padding(
                    padding:
                    EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.30, bottom: 50, left: 20, right: 20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      elevation: 10,
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: 5,
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
                                      Text(
                                        '9 months ago',
                                        style: TextStyle(
                                            color: AppThemes.clrBlack,
                                            fontSize: AppFonts.size_small_medium,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: AppFonts.PoppinsRegular),
                                      ),
                                    ],
                                  ),
                                ),
                                index==4?Container() :Padding(
                                  padding: const EdgeInsets.only(bottom: 20,top: 5),
                                  child: Divider(color: AppThemes.clrGray,height: 3),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

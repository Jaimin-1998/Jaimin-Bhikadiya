import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ShowroomDetails extends StatefulWidget {
  @override
  _ShowroomDetailsState createState() => _ShowroomDetailsState();
}

class _ShowroomDetailsState extends State<ShowroomDetails> {
  double starRating = 5;
  double starRatingList = 5;
  double addStarRating = 0;
  double rating = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.45,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: AppThemes.clrPrimary,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(45),
                          bottomRight: Radius.circular(45))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                    child: Stack(
                      children: [
                        Align(
                            alignment: Alignment.topLeft,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                                // SimpleHiddenDrawerController.of(context).toggle();
                              },
                              child: Padding(
                                padding:
                                    EdgeInsets.only(top: 7, bottom: 8, right: 8),
                                child: Image.asset(AllImages.ic_backButton),
                              ),
                            )),
                        Align(
                          alignment: Alignment.topRight,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(AllImages.ic_google_logo),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Text(
                                  AppString.strVerified,
                                  style: TextStyle(
                                      color: AppThemes.clrBlack,
                                      fontWeight: FontWeight.bold,
                                      fontSize: AppFonts.size_triple_extra_large,
                                      fontFamily: AppFonts.PoppinsBold),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: Image.asset(AllImages.ic_EditBlack),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.width * 0.25,
                      right: 20,
                      left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: CircleAvatar(
                              backgroundColor: AppThemes.clrBlack,
                              radius: 100,
                              child: CircleAvatar(
                                radius: 95,
                                backgroundImage:
                                    AssetImage(AllImages.img_user_profile1),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
                          Flexible(
                            flex: 2,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(AppString.strPsAdMotors,
                                    style: TextStyle(
                                        fontSize: AppFonts.size_large,
                                        color: AppThemes.clrBlack,
                                        fontFamily: AppFonts.PoppinsBold)),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Text(
                                      '12',
                                      style: TextStyle(
                                          fontFamily: AppFonts.PoppinsRegular,
                                          color: AppThemes.clrBlack,
                                          fontSize: AppFonts.size_small_medium),
                                    ),
                                    SizedBox(
                                      width: 10
                                    ),
                                    RatingBar.builder(
                                      itemSize: 20,
                                      itemCount: 5,
                                      initialRating: starRating,
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
                                    SizedBox(
                                        width: 10
                                    ),
                                    Text('(5.0)',
                                        style: TextStyle(
                                            fontFamily: AppFonts.PoppinsRegular,
                                            color: AppThemes.greenColor,
                                            fontSize: AppFonts.size_small_medium))
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      AppString.strJoinedOn,
                                      style: TextStyle(
                                          fontSize: AppFonts.size_small_medium,
                                          color: AppThemes.clrGray,
                                          fontFamily: AppFonts.PoppinsRegular),
                                    ),
                                    SizedBox(width: 20),
                                    Text(
                                      '15 Jul 2020 \n 09:53 Pm',
                                      style: TextStyle(
                                          fontFamily: AppFonts.PoppinsRegular,
                                          color: AppThemes.clrBlack,
                                          fontSize: AppFonts.size_small_medium),
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),

              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: serviceListingList(),
            )
          ],
        ),
      ),
    );
  }

  Widget serviceListingList() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.75,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15),
        padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
        itemCount: 6,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
// todo make seprate component for item
        itemBuilder: (context, index) {
          return Container(
            child: Stack(
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(AllImages.img_car),
                                    fit: BoxFit.cover)),
                          )),
                      Flexible(
                          flex: 1,
                          child: Container(
                              padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4, bottom: 8),
                                    child: Text(
                                      'Service Name',
                                      style: TextStyle(
                                          color: AppThemes.clrBlack,
                                          fontSize: AppFonts.size_small_medium,
                                          fontWeight: FontWeight.normal,
                                          fontFamily: AppFonts.PoppinsRegular),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(bottom: 8),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              left: 4, right: 8),
                                          child: Text(
                                            '(12)',
                                            style: TextStyle(
                                                color: AppThemes.clrBlack,
                                                fontSize:
                                                AppFonts.size_small_medium,
                                                fontWeight: FontWeight.normal,
                                                fontFamily:
                                                AppFonts.PoppinsRegular),
                                          ),
                                        ),
                                        Flexible(
                                          child: SmoothStarRating(
                                            allowHalfRating: false,
                                            onRated: (value) {
                                              setState(() {
                                                rating = value;
                                              });
                                            },
                                            starCount: 5,
                                            rating: rating,
                                            size: 15.0,
                                            color: Colors.green,
                                            borderColor: Colors.green,
                                            spacing: 0.0,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(AllImages.ic_location,
                                          height: 20, width: 20),
                                      SizedBox(width: 8),
                                      Text(
                                        'Singapore',
                                        style: TextStyle(
                                            color: AppThemes.clrBlack,
                                            fontSize:
                                            AppFonts.size_small_medium,
                                            fontWeight: FontWeight.normal,
                                            fontFamily:
                                            AppFonts.PoppinsRegular),
                                      ),
                                    ],
                                  ),
                                ],
                              )))
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      margin: EdgeInsets.only(left: 20, top: 15),
                      height: 25,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppThemes.clrWhite,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Image.asset(AllImages.ic_heart)),
                )
              ],
            ),
          );
        });
  }
}

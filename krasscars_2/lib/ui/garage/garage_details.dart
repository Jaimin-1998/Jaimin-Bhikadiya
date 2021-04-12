import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:krasscars_2/constants/AppString.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class GarageDetails extends StatefulWidget {
  @override
  _GarageDetailsState createState() => _GarageDetailsState();
}

class _GarageDetailsState extends State<GarageDetails> {
  double starRating = 5;
  double starRatingList = 5;
  double addStarRating = 0;
  double rating = 5.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              AppBarWidget(context, AppString.strVindhyasGarage, false),
              carImageWidget(),
              Padding(
                  padding: EdgeInsets.only(
                      left: 30,
                      right: 30,
                      top: MediaQuery.of(context).size.width * 0.75),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strCarDescription,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsBold),
                              ),
                              SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: Image.asset(
                                    AllImages.ic_EditBlack,
                                    fit: BoxFit.fill,
                                  ))
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strManufactures,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                AppString.strBMW,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strModel,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                AppString.strBMWX3Four,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strYear,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                '2010',
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strNickName,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                AppString.strTuby,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strEngine,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                AppString.strInline4,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strTransmission,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                AppString.strAutomatic,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strFuelType,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                AppString.strPetrol,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                            padding:
                                EdgeInsets.only(left: 30, right: 30, top: 30),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text('VIN',
                                  style: TextStyle(
                                      fontSize: AppFonts.size_medium,
                                      color: AppThemes.clrGray,
                                      fontFamily: AppFonts.PoppinsSemiBold)),
                            )),
                        Padding(
                          padding:
                              EdgeInsets.only(left: 30, right: 30, top: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strInsuranceValidity,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                '31 Dec 2020',
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 30, right: 30, top: 10, bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                AppString.strServiceDueOn,
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrGray,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              ),
                              Text(
                                '01 Dec 2020',
                                style: TextStyle(
                                    fontSize: AppFonts.size_medium,
                                    color: AppThemes.clrBlack,
                                    fontFamily: AppFonts.PoppinsSemiBold),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 40, left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.strAvailableService,
                  style: TextStyle(
                      fontFamily: AppFonts.PoppinsBold,
                      color: AppThemes.clrBlack,
                      fontSize: AppFonts.size_large),
                ),
                Text(
                  AppString.strViewAll,
                  style: TextStyle(
                      fontFamily: AppFonts.PoppinsRegular,
                      color: AppThemes.greenColor,
                      fontSize: AppFonts.size_medium),
                )
              ],
            ),
          ),
          serviceListingList()
        ],
      ),
    );
  }

  Widget carImageWidget() {
    return Container(
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.25),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.width * 0.70,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                image: DecorationImage(
                    image: AssetImage(AllImages.img_macedes),
                    fit: BoxFit.cover)),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
            margin: EdgeInsets.only(top: 15, left: 25),
            decoration: BoxDecoration(
              color: AppThemes.clrWhite,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Text(
              AppString.strWhite,
              style: TextStyle(
                  color: AppThemes.clrBlack,
                  fontSize: AppFonts.size_small_medium,
                  fontFamily: AppFonts.PoppinsRegular),
            ),
          ),
        ],
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
        physics: NeverScrollableScrollPhysics(),
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

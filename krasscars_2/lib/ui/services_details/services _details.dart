import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';
import 'package:krasscars_2/custom_widget/text_field_widget.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class ServiceDetails extends StatefulWidget {
  @override
  _ServiceDetailsState createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  double starRating = 5;
  double starRatingList = 5;
  double addStarRating = 0;
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(vertical: 15,horizontal: 20),
        decoration: BoxDecoration(
            color: AppThemes.clrTransparent,
            borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft: Radius.circular(25))
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: 25),
            Flexible(
              flex: 1,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Image.asset(AllImages.ic_heart,color: AppThemes.clrGray),
                ),
              ),
            ),
            SizedBox(width: 35),
            Flexible(
              flex: 2,
              child: ButtonWidget(
                width: MediaQuery.of(context).size.width,
                color: AppThemes.greenColor,
                shadowColor: AppThemes.greenColor,
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Sidebar()));
                },
                text: Text(
                  AppString.strBookTestDrive,
                  style: TextStyle(
                      color: AppThemes.clrWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: AppFonts.size_large,
                      fontFamily: AppFonts.PoppinsBold,
                      letterSpacing: 0.80),textAlign: TextAlign.center,
                ),
              ),
            ),

          ],
        ),
      ),
      body: SingleChildScrollView(
          child: Stack(children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.30,
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
                          padding: EdgeInsets.only(top: 7, bottom: 8, right: 8),
                          child: Image.asset(AllImages.ic_backButton),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(AllImages.ic_report1),
                          ),
                          SizedBox(width: 20),
                          GestureDetector(
                            onTap: () {},
                            child: Image.asset(AllImages.ic_share),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            carImageWidget(),
          ])),
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
              'New',
              style: TextStyle(
                  color: AppThemes.clrBlack,
                  fontSize: AppFonts.size_small_medium,
                  fontFamily: AppFonts.PoppinsRegular),
            ),
          ),
          detailCar(),
        ],
      ),
    );
  }

  Widget detailCar() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.width * 0.58,
              left: 25,
              right: 25,
              bottom: 20),
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$ 600',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontSize: AppFonts.size_triple_extra_large,
                            fontWeight: FontWeight.bold,
                            fontFamily: AppFonts.PoppinsBold),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        'Service Name',
                        style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontSize: AppFonts.size_small_medium,
                            fontWeight: FontWeight.normal,
                            fontFamily: AppFonts.PoppinsRegular),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
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
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                                fontSize: AppFonts.size_extra_small,
                                fontWeight: FontWeight.normal,
                                fontFamily: AppFonts.PoppinsRegular),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8,left: 7),
                    child: Row(
                      children: <Widget>[
                        Text('12',
                            style: TextStyle(
                                color: AppThemes.clrBlack,
                                fontSize: AppFonts.size_medium)),
                        SizedBox(width: 10),
                        RatingBar.builder(
                          itemSize: 18,
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
                        Text(
                          '($starRating)',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: AppFonts.size_medium,
                              color: AppThemes.greenColor,
                              fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Offers(),
        itemLocation(),
        serviceDescription(),
        reviewAndRating()
      ],
    );
  }

  Widget Offers() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 20, 20),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  AppString.strOffers,
                  style: TextStyle(
                      color: AppThemes.clrBlack,
                      fontFamily: AppFonts.PoppinsBold,
                      fontSize: AppFonts.size_medium),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  AppString.strFreeCarwash,
                  style: TextStyle(
                      color: AppThemes.clrBlack,
                      fontSize: AppFonts.size_small_medium,
                      fontFamily: AppFonts.PoppinsRegular),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10,top: 8),
                child: Text(
                  AppString.strFreeCarPickupAndDrop,
                  style: TextStyle(
                      color: AppThemes.clrBlack,
                      fontSize: AppFonts.size_small_medium,
                      fontFamily: AppFonts.PoppinsRegular),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget serviceDescription() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 20, 20),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Text(
                  AppString.strServiceDescription,
                  style: TextStyle(
                      color: AppThemes.clrBlack,
                      fontFamily: AppFonts.PoppinsBold,
                      fontSize: AppFonts.size_medium),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Text(
                  AppString.strSafetyTipsString,
                  style: TextStyle(
                      color: AppThemes.clrBlack,
                      fontSize: AppFonts.size_small_medium,
                      fontFamily: AppFonts.PoppinsRegular),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Text(
                    AppString.strReadMore,
                    style: TextStyle(
                        color: AppThemes.clrBlack,
                        fontSize: AppFonts.size_small_medium,
                        fontFamily: AppFonts.OpenSansSemibold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemLocation() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 20, 20),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text(
                  AppString.strItemLocation,
                  style: TextStyle(
                      color: AppThemes.clrBlack,
                      fontFamily: AppFonts.PoppinsBold,
                      fontSize: AppFonts.size_medium),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset(AllImages.ic_location),
                    SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        AppString.strItemLocationString,
                        style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontSize: AppFonts.size_small_medium,
                            fontFamily: AppFonts.PoppinsRegular,
                            height: 1.80),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Center(
                  child: Text(
                    AppString.strViewOnMap,
                    style: TextStyle(
                        color: AppThemes.clrBlack,
                        fontSize: AppFonts.size_small_medium,
                        fontFamily: AppFonts.OpenSansSemibold),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget reviewAndRating() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 20, 25),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppString.strReViewandRating,
                      style: TextStyle(
                          color: AppThemes.clrBlack,
                          fontFamily: AppFonts.PoppinsBold,
                          fontSize: AppFonts.size_medium),
                    ),
                    Text(
                      AppString.strViewAll,
                      style: TextStyle(
                          color: AppThemes.greenColor,
                          fontFamily: AppFonts.PoppinsRegular,
                          fontSize: AppFonts.size_small_medium),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
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
                              initialRating: starRatingList,
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
                                  starRatingList = rating;
                                });

                                print('starRatingList: $starRatingList');
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
                        index == 2
                            ? Container()
                            : Padding(
                          padding:
                          const EdgeInsets.only(bottom: 20, top: 5),
                          child: Divider(
                              color: AppThemes.clrGray, height: 3),
                        )
                      ],
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Center(
                  child:  SmoothStarRating(
                      allowHalfRating: false,
                      onRated: (v) {
                        setState(() {
                          addStarRating = v;
                        });
                      },
                      starCount: 5,
                      rating: addStarRating,
                      size: 30.0,
                      isReadOnly:false,
                      //fullRatedIconData: Icons.blur_off,
                      //halfRatedIconData: Icons.blur_on,
                      color: Colors.green,
                      borderColor: Colors.green,
                      spacing:10.0
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,30,10,20),
                child: maxLinesTextField(
                    context, controller, AppString.strAddaWrittenReview, 7),
              ),
              Padding(
                  padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width*0.17,vertical: 8),
                  child: ButtonWidget(
                    width: MediaQuery.of(context).size.width,
                    color: AppThemes.greenColor,
                    shadowColor: AppThemes.greenColor,
                    onPressed: () {
                      // Navigator.push(context,
                      //     MaterialPageRoute(builder: (context) => Sidebar()));
                    },
                    text: Text(
                      AppString.strSubmit,
                      style: TextStyle(
                          color: AppThemes.clrWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: AppFonts.size_large,
                          fontFamily: AppFonts.PoppinsBold,
                          letterSpacing: 0.80),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/AppString.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';

class BookTestDrive extends StatefulWidget {
  @override
  _BookTestDriveState createState() => _BookTestDriveState();
}

class _BookTestDriveState extends State<BookTestDrive> {
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
                  AppBarWidget1(context, AppString.strBookTestDrive, false),
                  Padding(
                    padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.width * 0.30,
                        bottom: 50,
                        left: 20,
                        right: 20),
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(AppString.strCarDetails,
                                    style: TextStyle(
                                        fontFamily: AppFonts.PoppinsBold,
                                        fontSize: AppFonts.size_small_medium)),
                                GestureDetector(
                                  onTap: () {},
                                  child: Image.asset(AllImages.ic_EditBlack),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Stack(children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                0.37,
                                        width: MediaQuery.of(context).size.width *
                                            0.32,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(AllImages.ic_cae2),
                                                fit: BoxFit.cover)),
                                      ),
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, left: 10),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: AppThemes.clrWhite,
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10,
                                                right: 10,
                                                top: 5,
                                                bottom: 5),
                                            child: Text(
                                              AppString.strWhite,
                                              style: TextStyle(
                                                  color: AppThemes.clrBlack,
                                                  fontSize:
                                                      AppFonts.size_small_medium,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 10, right: 10),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              AppString.strManufactures,
                                              style: TextStyle(
                                                  color: AppThemes
                                                      .clrgrayButtonText,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular,
                                                  fontSize: AppFonts
                                                      .size_small_medium),
                                            ),
                                            Text(
                                              AppString.strBMW,
                                              style: TextStyle(
                                                  color: AppThemes.clrBlack,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular,
                                                  fontSize: AppFonts
                                                      .size_small_medium),
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

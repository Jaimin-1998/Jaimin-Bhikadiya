import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/AppString.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';
import 'package:krasscars_2/custom_widget/text_field_widget.dart';
import 'package:krasscars_2/helper/validate.dart';

class ServiceName extends StatefulWidget {
  @override
  _ServiceNameState createState() => _ServiceNameState();
}

class _ServiceNameState extends State<ServiceName> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController pickUpLocationController = TextEditingController();
  TextEditingController dropLocationController = TextEditingController();
  TextEditingController datePreferredController = TextEditingController();
  TextEditingController timePreferredController = TextEditingController();
  bool isSwitched = true;
  var textValue = 'Switch is ON';

  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 100,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: AppThemes.clrWhite,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('\$ 600', style: TextStyle(color: AppThemes.clrBlack, fontFamily: AppFonts.PoppinsBold, fontSize: AppFonts.size_large)),

      ButtonWidget(
              width: MediaQuery.of(context).size.width * 0.55,
              color: AppThemes.greenColor,
              text: Text(
                AppString.strBookService,
                style: TextStyle(
                    color: AppThemes.clrWhite,
                    fontWeight: FontWeight.bold,
                    fontSize: AppFonts.size_large),
              ),
              onPressed: () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => Authenticate()));
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Column(
            children: [
              Stack(
                children: [
                  AppBarWidget1(context, AppString.strServiceName, false),
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
                                                0.32,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.37,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(15),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    AllImages.ic_cae2),
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
                                                  fontSize: AppFonts
                                                      .size_small_medium,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ]),
                                  ),
                                  Flexible(
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              AppString.strMake,
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
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              AppString.strModel,
                                              style: TextStyle(
                                                  color: AppThemes
                                                      .clrgrayButtonText,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular,
                                                  fontSize: AppFonts
                                                      .size_small_medium),
                                            ),
                                            Text(
                                              AppString.strM3330i,
                                              style: TextStyle(
                                                  color: AppThemes.clrBlack,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular,
                                                  fontSize: AppFonts
                                                      .size_small_medium),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              AppString.strYear,
                                              style: TextStyle(
                                                  color: AppThemes
                                                      .clrgrayButtonText,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular,
                                                  fontSize: AppFonts
                                                      .size_small_medium),
                                            ),
                                            Text(
                                              AppString.str2010,
                                              style: TextStyle(
                                                  color: AppThemes.clrBlack,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular,
                                                  fontSize: AppFonts
                                                      .size_small_medium),
                                            )
                                          ],
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              AppString.strNickName,
                                              style: TextStyle(
                                                  color: AppThemes
                                                      .clrgrayButtonText,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular,
                                                  fontSize: AppFonts
                                                      .size_small_medium),
                                            ),
                                            Text(
                                              AppString.strTuby,
                                              style: TextStyle(
                                                  color: AppThemes.clrBlack,
                                                  fontFamily:
                                                      AppFonts.PoppinsRegular,
                                                  fontSize: AppFonts
                                                      .size_small_medium),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 20),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  AppString.strPsAdMotors,
                                  style: TextStyle(
                                      fontSize: AppFonts.size_medium,
                                      fontFamily: AppFonts.PoppinsSemiBold,
                                      color: AppThemes.clrgrayButtonText),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 25,
                                    width: 25,
                                    child: Image.asset(
                                      AllImages.ic_location,
                                      color: AppThemes.clrBlack,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Flexible(
                                    child: Text(
                                      AppString.strItemLocationString,
                                      style: TextStyle(
                                          color: AppThemes.clrgrayButtonText,
                                          fontFamily: AppFonts.PoppinsRegular,
                                          fontSize: AppFonts.size_small_medium),
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
          ),
          Padding(
            padding: EdgeInsets.only(right: 40, left: 40, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.strPickUpandDrop,
                  style: TextStyle(
                      color: AppThemes.clrBlack,
                      fontSize: AppFonts.size_medium),
                ),
                Transform.scale(
                    scale: 2,
                    child: Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: AppThemes.greenColor,
                      activeTrackColor: Colors.grey[100],
                      inactiveThumbColor: Colors.grey[200],
                      inactiveTrackColor: Colors.grey[100],
                    )),
                Text('\$ 30',
                    style: TextStyle(
                        fontSize: AppFonts.size_medium_large,
                        fontFamily: AppFonts.PoppinsBold,
                        color: AppThemes.clrBlack))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: inputTextField(fullNameController, validateName,
                AppString.strFullName, TextInputType.text, null, false,
                prefixIcon: Image.asset(
                  AllImages.ic_manager,
                  color: AppThemes.clrGray,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: inputTextField(addressController, validateAddress,
                AppString.strAddress, TextInputType.text, null, false,
                prefixIcon: Image.asset(
                  AllImages.ic_location,
                  color: AppThemes.clrGray,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: inputTextField(pickUpLocationController, validateAddress,
                AppString.strPickUpLocation, TextInputType.text, null, false,
                prefixIcon: Image.asset(
                  AllImages.ic_location,
                  color: AppThemes.clrGray,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: inputTextField(dropLocationController, validateAddress,
                AppString.strDropLocation, TextInputType.text, null, false,
                prefixIcon: Image.asset(
                  AllImages.ic_location,
                  color: AppThemes.clrGray,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30),
            child: inputTextField(datePreferredController, validateName,
                AppString.strDatePreferred, TextInputType.text, null, false,
                prefixIcon: Image.asset(
                  AllImages.ic_date,
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: inputTextField(timePreferredController, validateName,
                AppString.strTimePreferred, TextInputType.text, null, false,
                prefixIcon: Image.asset(
                  AllImages.ic_filter1,
                  color: AppThemes.clrGray,
                )),
          ),
        ],
      ),
    );
  }
}

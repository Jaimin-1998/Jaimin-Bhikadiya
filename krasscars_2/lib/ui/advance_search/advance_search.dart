import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/AppFonts.dart';
import 'package:krasscars_2/constants/AppString.dart';
import 'package:krasscars_2/constants/app_themes.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';
import 'package:krasscars_2/custom_widget/dropdown_value.dart';
import 'package:krasscars_2/custom_widget/search_bar_widget.dart';
import 'package:krasscars_2/custom_widget/text_field_widget.dart';

class AdvanceSearch extends StatefulWidget {
  @override
  _AdvanceSearchState createState() => _AdvanceSearchState();
}

class _AdvanceSearchState extends State<AdvanceSearch> {
  TextEditingController controller = TextEditingController();
  TextEditingController priceMincontroller = TextEditingController();
  TextEditingController priceMaxcontroller = TextEditingController();
  String isSelected = 'Buy';
  String manufactureString;
  String modelString;
  String bodyTypeString;
  String transmissionString;
  String fuelTypeString;

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
        child: ButtonWidget(
          width: MediaQuery.of(context).size.width,
          color: AppThemes.greenColor,
          text: Text(
            AppString.strSearch,
            style: TextStyle(
                color: AppThemes.clrWhite,
                fontWeight: FontWeight.bold,
                fontSize: AppFonts.size_large),
          ),
          onPressed: () {
            // Navigator.push(context, MaterialPageRoute(builder: (context) => Authenticate()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBarWidget(context, AppString.strAdvancedSearch, true),
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.27),
              child: Column(
                children: [
                  searchBar(controller, AppString.strSearchCar),
                  Padding(
                    padding: EdgeInsets.only(left: 50, right: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = 'Buy';
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: isSelected == 'Buy'
                                      ? AppThemes.primaryColor
                                      : AppThemes.clrgrayButtonBackground,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  AppString.strBuy,
                                  style: TextStyle(
                                      color: isSelected == 'Buy'
                                          ? AppThemes.clrBlack
                                          : AppThemes.clrgrayButtonText,
                                      fontSize: 13,
                                      fontFamily: AppFonts.PoppinsRegular),
                                ),
                              ),
                            )),
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                isSelected = 'Service';
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.35,
                              height: 60,
                              decoration: BoxDecoration(
                                  color: isSelected == 'Service'
                                      ? AppThemes.primaryColor
                                      : AppThemes.clrgrayButtonBackground,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Center(
                                child: Text(
                                  AppString.strService,
                                  style: TextStyle(
                                      color: isSelected == 'Service'
                                          ? AppThemes.clrBlack
                                          : AppThemes.clrgrayButtonText,
                                      fontSize: 13,
                                      fontFamily: AppFonts.PoppinsRegular),
                                ),
                              ),
                            ))
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 20, left: 20, top: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        textField(context, priceMaxcontroller, 'Price min',
                            MediaQuery.of(context).size.width * 0.43),
                        textField(context, priceMaxcontroller, 'Price Max',
                            MediaQuery.of(context).size.width * 0.43)
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 20, left: 20, top: 15),
                    child: CustomDropDown(
                        hint: AppString.strManufactures,
                        items: <String>[
                          'DropDown1',
                          'DropDown2',
                          'DropDown3',
                          'DropDown4',
                          'DropDown5',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: AppFonts.size_medium,
                                  fontWeight: FontWeight.normal),
                            ),
                          );
                        }).toList(),
                        value: manufactureString,
                        onChanged: (position) {
                          setState(() {
                            manufactureString = position;
                          });
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 20, left: 20, top: 15),
                    child: CustomDropDown(
                        hint: AppString.strModel,
                        items: <String>[
                          'DropDown1',
                          'DropDown2',
                          'DropDown3',
                          'DropDown4',
                          'DropDown5',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: AppFonts.size_medium,
                                  fontWeight: FontWeight.normal),
                            ),
                          );
                        }).toList(),
                        value: modelString,
                        onChanged: (position) {
                          setState(() {
                            modelString = position;
                          });
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 20, left: 20, top: 15),
                    child: CustomDropDown(
                        hint: AppString.strBodyType,
                        items: <String>[
                          'DropDown1',
                          'DropDown2',
                          'DropDown3',
                          'DropDown4',
                          'DropDown5',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: AppFonts.size_medium,
                                  fontWeight: FontWeight.normal),
                            ),
                          );
                        }).toList(),
                        value: bodyTypeString,
                        onChanged: (position) {
                          setState(() {
                            bodyTypeString = position;
                          });
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 20, left: 20, top: 15),
                    child: CustomDropDown(
                        hint: AppString.strTransmission,
                        items: <String>[
                          'DropDown1',
                          'DropDown2',
                          'DropDown3',
                          'DropDown4',
                          'DropDown5',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: AppFonts.size_medium,
                                  fontWeight: FontWeight.normal),
                            ),
                          );
                        }).toList(),
                        value: transmissionString,
                        onChanged: (position) {
                          setState(() {
                            transmissionString = position;
                          });
                        }),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        right: 20, left: 20, top: 15),
                    child: CustomDropDown(
                        hint: AppString.strFuelType,
                        items: <String>[
                          'DropDown1',
                          'DropDown2',
                          'DropDown3',
                          'DropDown4',
                          'DropDown5',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  color: Colors.grey[500],
                                  fontSize: AppFonts.size_medium,
                                  fontWeight: FontWeight.normal),
                            ),
                          );
                        }).toList(),
                        value: fuelTypeString,
                        onChanged: (position) {
                          setState(() {
                            fuelTypeString = position;
                          });
                        }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

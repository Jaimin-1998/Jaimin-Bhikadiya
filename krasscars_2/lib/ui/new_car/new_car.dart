import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';
import 'package:krasscars_2/custom_widget/dropdown_value.dart';
import 'package:krasscars_2/custom_widget/text_field_widget.dart';

class NewCarAddScreen extends StatefulWidget {
  @override
  _NewCarAddScreenState createState() => _NewCarAddScreenState();
}

class _NewCarAddScreenState extends State<NewCarAddScreen> {
  String _modelChosenValue;
  String _manufacturerChosenValue;
  String _coloChosenValue;
  String _transmissionChosenValue;
  String _fuelTypeChosenValue;
  TextEditingController nickNamesController;
  TextEditingController vinController;
  TextEditingController engineController;
  TextEditingController _yearController;
  TextEditingController _insuranceValidityController;
  TextEditingController _serviceDueOnController;
  bool isSwitched = true;
  // List<Asset> images = <Asset>[];
  // String _error = 'No Error Dectected';
  //
  // Future<void> loadAssets() async {
  //   List<Asset> resultList = <Asset>[];
  //   String error = 'No Error Detected';
  //
  //   try {
  //     resultList = await MultiImagePicker.pickImages(
  //       maxImages: 15,
  //       enableCamera: true,
  //       selectedAssets: images,
  //       cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
  //       materialOptions: MaterialOptions(
  //         actionBarColor: "#F0EB16",
  //         actionBarTitle: AppString.strAppName,
  //         allViewTitle: "All Photos",
  //         useDetailsView: false,
  //         selectCircleStrokeColor: "#000000",
  //       ),
  //     );
  //   } on Exception catch (e) {
  //     error = e.toString();
  //   }
  //
  //   if (!mounted) return;
  //
  //   setState(() {
  //     images = resultList;
  //     _error = error;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.clrWhite,
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
          AppString.strAddCar,
            style: TextStyle(
                color: AppThemes.clrWhite,
                fontWeight: FontWeight.bold,
                fontSize: AppFonts.size_large,
                fontFamily: AppFonts.PoppinsBold),
          ),
          onPressed: () {
          //  Navigator.push(context, MaterialPageRoute(builder: (context)=>MessagesScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          AppBarWidget2(context, AppString.strAddNewCar,false,false,height:MediaQuery.of(context).size.width*0.60),
          Column(
            children: [
              uploadImageList(),
              fromView(),
            ],
          ),
        ]),
      ),
    );
  }

  Widget uploadImageList() {
    return Container(
      margin: EdgeInsets.only(
          top: MediaQuery.of(context).size.width * 0.26, left: 20, right: 20),
      // height: MediaQuery.of(context).size.width * 0.60,
      child: Card(
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                     AppString.strCarPhotos,
                      style: TextStyle(
                        color: AppThemes.clrBlack,
                        fontSize: AppFonts.size_medium,
                        fontWeight: FontWeight.bold,
                        fontFamily: AppFonts.PoppinsBold
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 20),
                    child: Image.asset(AllImages.ic_upload,color: AppThemes.clrBlack),
                  )
                ],
              ),
              Container(
                height: 116,
                margin: EdgeInsets.only(top: 20, bottom: 10),
                child: ListView.builder(
                    padding: EdgeInsets.only(right: 10, left: 20),
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      //  Asset asset = images[index];
                      return Container(
                          margin: EdgeInsets.only(right: 15),
                          width: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(AllImages.img_full_car),
                                  fit: BoxFit.cover)),
                          child: index==0? Container(
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(20),
                                ),
                                color: Colors.black54,
                              ),
                          child: Center(child: Image.asset(AllImages.ic_delete)),                                                        ):Container()
                          /*child: AssetThumb(
                      asset: asset,
                      width: 150,
                      height: 116,
                    ),*/
                          );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget fromView() {
    return Container(
      margin: EdgeInsets.only(left: 40, right: 40, bottom: 20, top: 20),
      child: Column(
        children: [
          textField2(context, nickNamesController, AppString.strNickNames),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomDropDown(
                hint: AppString.strManufacturers,
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
                value: _manufacturerChosenValue,
                onChanged: (position) {
                  setState(() {
                    _manufacturerChosenValue = position;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
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
                value: _modelChosenValue,
                onChanged: (position) {
                  setState(() {
                    _modelChosenValue = position;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: textField2(context, vinController, AppString.strVIN),
          ),
          textField2(context, engineController, AppString.strEngine),
          Padding(
            padding: const EdgeInsets.only(top: 15),
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
                value: _transmissionChosenValue,
                onChanged: (position) {
                  setState(() {
                    _transmissionChosenValue = position;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
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
                value: _fuelTypeChosenValue,
                onChanged: (position) {
                  setState(() {
                    _fuelTypeChosenValue = position;
                  });
                }),
          ),
          textField2(context, _yearController, AppString.strYear),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: CustomDropDown(
                hint: AppString.strColor,
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
                value: _coloChosenValue,
                onChanged: (position) {
                  setState(() {
                    _coloChosenValue = position;
                  });
                }),
          ),
          textField2(context, _insuranceValidityController, AppString.strInsuranceValidity,suffixIcon: Image.asset(AllImages.ic_date)),
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: textField2(context, _serviceDueOnController, AppString.strServiceDueOn,suffixIcon: Image.asset(AllImages.ic_date)),
          ),

        ],
      ),
    );
  }

}

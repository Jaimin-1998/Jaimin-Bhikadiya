import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';
import 'package:krasscars_2/custom_widget/text_field_widget.dart';
import 'package:krasscars_2/helper/validate.dart';
import '../dialog_box/confirm_dialog.dart';
import '../dialog_box/add_code_dialog.dart';

class ProfileEdit extends StatefulWidget {
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.primaryColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.15, left: 15),
              child: Image.asset(AllImages.ic_backButton),
            ),
            Padding(
                padding: EdgeInsets.only(top: 10),
                child: Center(
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 70,
                        child: ClipOval(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: AppThemes.clrBlack, width: 3),
                            ),
                            child: Image.asset(
                              AllImages.img_userProfile,
                              height: 150,
                              width: 150,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 1,
                          right: 1,
                          child: Container(
                            padding: EdgeInsets.all(5),
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppThemes.clrWhite,
                              image: DecorationImage(
                                image: AssetImage(AllImages.ic_EditBlack),
                              ),
                            ),
                          ))
                    ],
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 30),
              child: inputTextField(userNameController, validateName,
                  AppString.strHeshamSqrat, TextInputType.text, null, false,
                  prefixIcon: Image.asset(
                    AllImages.ic_manager,
                    color: AppThemes.clrGray,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: inputTextField(emailController, validateEmail,
                  AppString.strEmail, TextInputType.emailAddress, null, false,
                  prefixIcon: Image.asset(
                    AllImages.ic_email,
                    // color: AppThemes.clrGray,
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: inputTextField(phoneController, validateMobileNumber,
                  '+002455045454', TextInputType.phone, null, false,
                  prefixIcon: Image.asset(
                    AllImages.ic_phone,
                    // color: AppThemes.clrGray,
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
              padding: EdgeInsets.only(left: 20, right: 20),
              child: inputTextField(cityController, validateCity,
                  AppString.strCity, TextInputType.text, null, false,
                  prefixIcon: Image.asset(
                    AllImages.ic_location,
                    color: AppThemes.clrGray,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonWidget(
                width: MediaQuery.of(context).size.width,
                color: AppThemes.greenColor,
                shadowColor: AppThemes.greenColor,
                onPressed: () {
                  pleaseAddCodeDialog(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Sidebar()));
                },
                text: Text(
                  AppString.strSave,
                  style: TextStyle(
                      color: AppThemes.clrWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: AppFonts.size_medium_large_extra,
                      fontFamily: AppFonts.PoppinsBold,
                      letterSpacing: 0.80),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Divider(
                  color: AppThemes.clrGray,
                  thickness: 1,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ButtonWidget(
                width: MediaQuery.of(context).size.width,
                color: AppThemes.clrDarkRed,
                shadowColor: AppThemes.clrDarkRed,
                onPressed: () {
                  confirmDialog(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => Sidebar()));
                },
                text: Text(
                  AppString.strDeactivateAccount,
                  style: TextStyle(
                      color: AppThemes.clrWhite,
                      fontWeight: FontWeight.bold,
                      fontSize: AppFonts.size_medium_large_extra,
                      fontFamily: AppFonts.PoppinsBold,
                      letterSpacing: 0.80),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

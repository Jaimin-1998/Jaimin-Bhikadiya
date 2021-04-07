import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';
import 'package:krasscars_2/custom_widget/text_field_widget.dart';
import 'package:krasscars_2/helper/validate.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.primaryColor,
      body: Container(
        child: Stack(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget>[
                    Center(child: Image.asset(AllImages.imgLogo)),
                    SizedBox(
                      height: 20,
                    ),
                    inputTextField(usernameController, validateName,
                        AppString.strUserName, TextInputType.text, null, false,
                        prefixIcon: Image.asset(AllImages.icon_user)),
                    inputTextField(
                        emailController,
                        validateEmail,
                        AppString.strEmail,
                        TextInputType.emailAddress,
                        null,
                        false,
                        prefixIcon: Image.asset(AllImages.ic_email)),
                    inputTextField(passwordController, validatePassword,
                        AppString.strPassword, TextInputType.text, null, true,
                        prefixIcon: Image.asset(AllImages.ic_lock)),
                    Row(
                      children: <Widget>[
                        Checkbox(
                          checkColor: AppThemes.clrWhite,
                          activeColor: AppThemes.greenColor,
                          value: checkedValue,
                          onChanged: (bool value) {
                            setState(() {
                              checkedValue = value;
                            });
                          },
                        ),
                        Text(AppString.strAgreeToThePrivacyPolicy)
                      ],
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ButtonWidget(
                        width: MediaQuery.of(context).size.width,
                        color: AppThemes.greenColor,
                        shadowColor: AppThemes.greenColor,
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => Sidebar()));
                        },
                        text: Text(
                          AppString.strregister,
                          style: TextStyle(
                              fontSize: AppFonts.size_medium_large_extra,
                              color: AppThemes.clrWhite,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ButtonWidget(
                        width: MediaQuery.of(context).size.width,
                        color: AppThemes.clrWhite,
                        shadowColor: AppThemes.clrGray,
                        onPressed: () {
                          // return Navigator.push(context,
                          //   MaterialPageRoute(builder: (context) => Login()));
                        },
                        text: Text(
                          AppString.strLogin,
                          style: TextStyle(
                              color: AppThemes.clrBlack,
                              fontSize: AppFonts.size_medium_large_extra,
                              fontFamily: AppFonts.PoppinsRegular),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

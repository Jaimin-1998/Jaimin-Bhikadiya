import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';
import 'package:krasscars_2/custom_widget/text_field_widget.dart';
import 'package:krasscars_2/helper/validate.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Center(child: Image.asset(AllImages.imgLogo)),
                    SizedBox(
                      height: 50,
                    ),
                    inputTextField(
                        emailController,
                        validateEmail,
                        AppString.strEmail,
                        TextInputType.emailAddress,
                        null,
                        false,
                        prefixIcon: Image.asset(AllImages.ic_email),),
                    inputTextField(passwordController, validatePassword,
                        AppString.strPassword, TextInputType.text, null, true,
                        prefixIcon: Image.asset(AllImages.ic_lock),
                        suffixIcon: GestureDetector(
                          child: Padding(
                            padding: EdgeInsets.only(top: 15, right: 10),
                            child: Text(
                              AppString.strForgot,
                              style: TextStyle(color: AppThemes.clrBlack),
                            ),
                          ),
                        )),
                    SizedBox(
                      height: 100,
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
                          AppString.strSignIn,
                          style: TextStyle(
                              color: AppThemes.clrWhite,
                              fontWeight: FontWeight.bold,
                              fontSize: AppFonts.size_medium_large_extra,
                              fontFamily: AppFonts.PoppinsBold
                              ,letterSpacing: 0.80),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Row(children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Container(
                              margin: EdgeInsets.only(right: 5),
                              color: AppThemes.clrGray,
                              height: 1,
                              width: double.infinity / 4)),
                      Expanded(
                          flex: 2,
                          child: Center(
                              child: Text(AppString.strNotHaveAccountYet))),
                      Expanded(
                          flex: 1,
                          child: Container(
                              margin: EdgeInsets.only(left: 5),
                              color: AppThemes.clrGray,
                              height: 1,
                              width: double.infinity / 4)),
                    ]),
                    SizedBox(height: 40),
                    Container(
                      padding:  EdgeInsets.symmetric(horizontal: 20),
                      child: ButtonWidget(
                        width: MediaQuery.of(context).size.width,
                        color: AppThemes.clrWhite,
                        shadowColor: AppThemes.clrGray,
                        onPressed: () {
                          // Navigator.push(context,
                          //     MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        text: Text(
                          AppString.strregister,
                          style: TextStyle(
                              color: AppThemes.clrBlack,
                              fontSize: AppFonts.size_medium_large_extra,
                              fontFamily: AppFonts.PoppinsRegular),
                        ),
                      ),
                    )
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

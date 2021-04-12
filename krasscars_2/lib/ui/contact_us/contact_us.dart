import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/button_widget.dart';
import 'package:krasscars_2/custom_widget/text_field_widget.dart';

class ContactUsScreen extends StatefulWidget {
  @override
  _ContactUsScreenState createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
  TextEditingController nameController;
  TextEditingController emailController;
  TextEditingController phoneController;
  TextEditingController messageController;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBarWithNotificationWidget(context, AppString.strHyderabad, AppString.strContactUs, false, true),
            Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.53,
                  right: 20,
                  left: 20),
              child: Column(
                children: [
                  textField(context, nameController, AppString.strName, MediaQuery.of(context).size.width),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child:
                        textField(context, nameController, AppString.strEmail, MediaQuery.of(context).size.width),
                  ),
                  textField(context, nameController, AppString.strPhone, MediaQuery.of(context).size.width),
                  Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: maxLinesTextField(
                        context, messageController, AppString.strMessage, 7),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 30),
                    child: ButtonWidget(
                      width: MediaQuery.of(context).size.width,
                      color: AppThemes.greenColor,
                      text: Text(
                        AppString.strSubmit,
                        style: TextStyle(
                            color: AppThemes.clrWhite,
                            fontWeight: FontWeight.bold,
                            fontSize: AppFonts.size_large,
                            fontFamily: AppFonts.OpenSansSemibold),
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

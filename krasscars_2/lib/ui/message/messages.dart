import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/search_bar_widget.dart';

class MessagesScreen extends StatefulWidget {
  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBarWithNotificationWidget(context,AppString.strHyderabad,AppString.strMessage,false,true),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.48),
              child: Column(
                children: [
                  searchBar(controller, AppString.strSearchMessage),
                  messagesList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget messagesList() {
    return ListView.builder(
        padding: EdgeInsets.only(left: 20, right: 20, bottom: 30),
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Card(
              elevation: 0.5,
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
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(AllImages.img_car_bmw),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: 20),
                            Text(
                              'BMW Mini Testdrive',
                              style: TextStyle(
                                color: AppThemes.clrBlack,
                                fontSize: AppFonts.size_small_medium,
                                fontFamily: AppFonts.PoppinsSemiBold,
                                fontWeight: FontWeight.w500,
                              ),
                              maxLines: 1,
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                        Text(
                          '24 Dec 2020',
                          style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontSize: AppFonts.size_extra_small,
                            fontWeight: FontWeight.normal,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Lorem ipsum dolor sit ame....',
                      style: TextStyle(
                        color: AppThemes.clrBlack,
                        fontSize: AppFonts.size_small_medium,
                        fontWeight: FontWeight.normal,
                        fontFamily: AppFonts.PoppinsRegular,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}

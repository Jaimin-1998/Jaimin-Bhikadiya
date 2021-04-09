import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/ui/post/post.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.55,
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
                          child: Image.asset(AllImages.ic_google_logo),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15),
                          child: Text(
                            AppString.strVerified,
                            style: TextStyle(
                                color: AppThemes.clrBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: AppFonts.size_triple_extra_large,
                                fontFamily: AppFonts.PoppinsBold),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Image.asset(AllImages.ic_EditBlack),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.width * 0.25,
                right: 20,
                left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: <Widget>[
                    Flexible(
                      flex: 1,
                      child: CircleAvatar(
                        backgroundColor: AppThemes.clrBlack,
                        radius: 50,
                        child: CircleAvatar(
                          radius: 47,
                          backgroundImage:
                              AssetImage(AllImages.img_user_profile1),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('HeshmSqrat',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: AppThemes.clrBlack,
                                  fontFamily: AppFonts.PoppinsBold)),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.phone,
                                    color: AppThemes.clrFontBlue, size: 30),
                                Text('+002455045454',
                                    style: TextStyle(
                                        color: AppThemes.clrFontBlue,
                                        fontSize: AppFonts.size_medium,
                                        fontFamily: AppFonts.PoppinsRegular))
                              ],
                            ),
                          ),
                          Text('Joined On 15 Jul 2020',
                              style: TextStyle(
                                  fontWeight: FontWeight.w300,
                                  color: AppThemes.clrFontBlue,
                                  fontSize: AppFonts.size_medium,
                                  fontFamily: AppFonts.PoppinsRegular))
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    AppString.strAboutMe,
                    style: TextStyle(
                        color: AppThemes.clrFontBlue,
                        fontSize: AppFonts.size_medium,
                        fontFamily: AppFonts.PoppinsRegular),
                    textAlign: TextAlign.left,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    AppString.strProfileAbout,
                    style: TextStyle(
                        color: AppThemes.clrFontBlue,
                        fontSize: AppFonts.size_medium,
                        fontFamily: AppFonts.PoppinsRegular),
                    textAlign: TextAlign.left,
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AppThemes.clrPrimary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: AppThemes.clrPrimary, width: 3)),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: AppThemes.clrBlack,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                padding: EdgeInsets.all(15),
                                child: Image.asset(AllImages.ic_heart,
                                    color: AppThemes.clrPrimary),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  AppString.strFavorites,
                                  style: TextStyle(
                                      color: AppThemes.clrBlack,
                                      fontFamily: AppFonts.PoppinsRegular,
                                      fontSize: AppFonts.size_large),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    Flexible(
                      flex: 1,
                      child: Card(
                        elevation: 6,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: AppThemes.clrPrimary,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                              border: Border.all(
                                  color: AppThemes.clrPrimary, width: 3)),
                          padding: EdgeInsets.all(20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    color: AppThemes.clrBlack,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                                padding: EdgeInsets.all(15),
                                child: Image.asset(
                                  AllImages.ic_orders,
                                  color: AppThemes.clrPrimary,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: Text(
                                  AppString.strMyOrders,
                                  style: TextStyle(
                                      color: AppThemes.clrBlack,
                                      fontFamily: AppFonts.PoppinsRegular,
                                      fontSize: AppFonts.size_large),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.fromLTRB( 15,25, 15,20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppString.strVindhyasGarage,
                        style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontFamily: AppFonts.PoppinsBold,
                            fontSize: AppFonts.size_triple_extra_large),
                      ),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>PostScreen()));
                        },
                        child: Container(
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                            color: AppThemes.clrPrimary,
                            shape: BoxShape.circle,
                            border:
                                Border.all(color: AppThemes.clrBlack, width: 3),
                          ),
                          child: Image.asset(AllImages.ic_add),
                        ),
                      )
                    ],
                  ),
                ),
                listWidget()
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget listWidget() {
    return ListView.builder(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.37,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Image.asset(AllImages.img_full_car, fit: BoxFit.cover),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                    margin: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: AppThemes.clrWhite,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Text(
                      'White',
                      style: TextStyle(
                          color: AppThemes.clrBlack,
                          fontSize: AppFonts.size_small_medium,
                          fontFamily: AppFonts.PoppinsRegular),
                    ),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Flexible(
                flex: 1,
                child:Column(
                  children: [
                    detailRowWidget('Make','BMW'),
                    detailRowWidget('Model','M3 330i'),
                    detailRowWidget('Year','2010'),
                    detailRowWidget('Nickname','Tuby'),
                  ],
                )
              )
            ],
          ),
        );
      },
    );
  }
  Widget detailRowWidget(String name,String detail){
    return  Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(color: AppThemes.clrBlack, fontSize: AppFonts.size_small, fontFamily:AppFonts.OpenSansSemibold),
          ),
          Text(detail,
              style: TextStyle(color: AppThemes.clrBlack, fontSize: AppFonts.size_small_medium,fontFamily: AppFonts.PoppinsRegular),
              textAlign: TextAlign.left)
        ],
      ),
    );
  }
}

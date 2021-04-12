import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/search_bar_widget.dart';
import '../service/service_history.dart';

class GarageScreen extends StatefulWidget {
  @override
  _GarageScreenState createState() => _GarageScreenState();
}

class _GarageScreenState extends State<GarageScreen> {

  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        AppBarWidget2(context, AppString.strVindhyasGarage,false,false,height:MediaQuery.of(context).size.width*0.36),
        Padding(
          padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width * 0.30,right: 15,left: 15),
          child: Column(
            children: [
              searchBar(controller, AppString.strSearchCar),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ServiceHistory()));
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
        ),
      ]),
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

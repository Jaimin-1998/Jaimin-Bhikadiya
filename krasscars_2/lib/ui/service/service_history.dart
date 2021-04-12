import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/search_bar_widget.dart';

class ServiceHistory extends StatefulWidget {
  @override
  _ServiceHistoryState createState() => _ServiceHistoryState();
}

class _ServiceHistoryState extends State<ServiceHistory> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          AppBarWidget2(context, AppString.strServiceHistory,false,false,height:MediaQuery.of(context).size.width*0.50,),
          Padding(
            padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width * 0.25,right: 20 ,left: 20),
            child: Column(
              children: [
                serviceList()
              ],
            ),
          ),
        ]),
      ),
    );
  }
  Widget serviceList(){
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 20),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: EdgeInsets.all(15),
              child: Column(
                children: [
                  Row(
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
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Row(
                      children: [
                        Container(
                            height: 50,
                            width: 50,
                            // margin: EdgeInsets.only(bottom: 30, left: 20),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(
                                    color: AppThemes.clrWhite, width: 5)),
                            child: Image.asset(
                              AllImages.img_user,
                              fit: BoxFit.cover,
                            )),
                        SizedBox(width: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PS Ad Motors',
                              style: TextStyle(
                                  color: AppThemes.clrBlack,
                                  fontSize: AppFonts.size_small_medium,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: AppFonts.PoppinsRegular),
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
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12,right: 8),
                    child: Row(
                      children: [
                        Text(
                          'Oild Changed',
                          style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontSize: AppFonts.size_extra_small,
                            fontWeight: FontWeight.normal,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(width: 20),
                        Text(
                          'XXX XXX XXX XXX XXX',
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
                  ),

                ],
              ),
            ),
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

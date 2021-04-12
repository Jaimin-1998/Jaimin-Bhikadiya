import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import '../../model/my_orders_model.dart';

class MyOrders extends StatefulWidget {
  @override
  _MyOrdersState createState() => _MyOrdersState();
}

class _MyOrdersState extends State<MyOrders> {

  List<MyOrdersModel> myOrdersModel = List<MyOrdersModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myOrdersModel.add(MyOrdersModel(
        AllImages.img_full_car,
        'Test Drive',
        'Singapore',
        'Status',
        'Test drive car on the way'));
    myOrdersModel.add(MyOrdersModel(
        AllImages.img_full_car,
        'Service',
        'Singapore',
        'Status',
        'Test drive car on the way'));
  }
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(children: [
        AppBarWidget2(context, AppString.strMyOrders,false,false,height:MediaQuery.of(context).size.width*0.50),
        Padding(
          padding:  EdgeInsets.only(top:MediaQuery.of(context).size.width * 0.25,right: 20 ,left: 20),
          child: Column(
            children: [
              myOrdersList()
            ],
          ),
        ),
      ]),
    );
  }
  Widget myOrdersList(){
    return ListView.builder(
      padding: EdgeInsets.only(bottom: 20),
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      itemCount: myOrdersModel.length,
      itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.only(bottom: 15),
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding:
              EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                        color: myOrdersModel[index]
                            .service ==
                            'Service'
                            ? AppThemes.clrBlack
                            : AppThemes.greenColor,
                        borderRadius:
                        BorderRadius.all(
                            Radius.circular(40))),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 6),
                      child: Text(
                        myOrdersModel[index].service,
                        style: TextStyle(
                            color: AppThemes.clrWhite,
                            fontSize: 11,
                            fontWeight:
                            FontWeight.bold),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                          flex: 2,
                          child: Container(
                            height: 110,
                            width: 136,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(20),
                              ),
                              image: DecorationImage(
                                  image: AssetImage(
                                      myOrdersModel[index].image),
                                  fit: BoxFit.cover),
                            ),
                          )),
                      SizedBox(width: 15),
                      Flexible(
                          flex: 3,
                          child: Container(
                            child: Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(AllImages.ic_location,
                                        height: 20, width: 20),
                                    SizedBox(width: 8),
                                    Text(
                                      myOrdersModel[index].location,
                                      style: TextStyle(
                                          color: AppThemes.clrBlack,
                                          fontSize: AppFonts.size_small_medium,
                                          fontWeight: FontWeight.normal),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 10),
                                  child:   Text(
                                    myOrdersModel[index].status,
                                    style: TextStyle(
                                      color: AppThemes.clrBlack,
                                      fontSize: AppFonts
                                          .size_small_medium,
                                      fontWeight: FontWeight.normal,
                                    ),
                                    maxLines: 1,
                                    textAlign: TextAlign.left,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 20, left: 3, top: 5),
                                  child: Text(
                                    myOrdersModel[index].detail,
                                    style: TextStyle(
                                        color: AppThemes.clrBlack,
                                        fontSize:
                                        AppFonts.size_small_medium,
                                    fontFamily: AppFonts.PoppinsRegular),
                                    textAlign: TextAlign.left,
                                    maxLines: 1,
                                  ),
                                ),
                              ],
                            ),
                          ))
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

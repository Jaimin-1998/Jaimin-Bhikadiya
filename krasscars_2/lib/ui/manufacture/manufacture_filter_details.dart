import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/search_bar_widget.dart';

class ManufactureFilterDetails extends StatefulWidget {
  @override
  _ManufactureFilterDetailsState createState() => _ManufactureFilterDetailsState();
}

class _ManufactureFilterDetailsState extends State<ManufactureFilterDetails> {
  TextEditingController controller = TextEditingController();


  Widget  carListingList()  {
    return GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 10,
          childAspectRatio: 0.80
        ),
        padding: EdgeInsets.only(left: 20),
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 8),
            width: MediaQuery.of(context).size.width  *0.65,
            child: Stack(
              children: [
                Card(
                  elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Flexible(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20)),
                                image: DecorationImage(
                                    image: AssetImage(AllImages.img_car),
                                    fit: BoxFit.cover)),
                          )),
                      Flexible(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.symmetric(vertical: 8,horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    '\$ 60,000.00',
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        color: AppThemes.clrBlack,
                                        fontSize: AppFonts.size_large,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: AppFonts.PoppinsBold),textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 8),
                                  child: Text(
                                    'BMW X3 four',
                                    style: TextStyle(
                                        color: AppThemes.clrBlack,
                                        fontSize: AppFonts.size_medium,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: AppFonts.PoppinsRegular),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        Image.asset(AllImages.ic_location,height: 20,width: 20) ,
                                        SizedBox(width: 8),
                                        Text(
                                          'Singapore',
                                          style: TextStyle(
                                              color: AppThemes.clrBlack,
                                              fontSize: AppFonts.size_small_medium,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: AppFonts.PoppinsRegular),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Image.asset(AllImages.ic_heart,height: 20,width: 20),
                                        SizedBox(width: 8),
                                        Text(
                                          '1',
                                          style: TextStyle(
                                              color: AppThemes.clrBlack,
                                              fontSize: AppFonts.size_small_medium,
                                              fontWeight: FontWeight.normal,
                                              fontFamily: AppFonts.PoppinsRegular),
                                        ),
                                      ],
                                    )
                                  ],
                                ),

                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        children: [
          Stack(
            children: [
              AppBarWidget(context, AppString.strBMWM3, true),
              Padding(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.27),
                child: Column(
                  children: [
                    searchBar(controller, AppString.strSearchCar),
                    carListingList()
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

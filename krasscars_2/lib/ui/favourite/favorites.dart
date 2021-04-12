import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/search_bar_widget.dart';

class Favorites extends StatefulWidget {
  @override
  _FavoritesState createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            AppBarWithNotificationWidget(context,AppString.strHyderabad,AppString.strFavorites,false,true),
            Padding(
              padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.48),
              child: Column(
                children: [
                  searchBar(controller, AppString.strSearchCar),
                  carList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget carList() {
    return  GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.80,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15),
        padding: EdgeInsets.only(bottom: 20, left: 10, right: 10),
        itemCount: 6,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        // todo make seprate component for item
        itemBuilder: (context, index) {
          return Container(
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                      flex: 1,
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
                      flex: 1,
                      child: Container(
                          padding: EdgeInsets.fromLTRB(15, 10, 15, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 4, bottom: 8),
                                child:  Text(
                                  '\$ 60,000.00',
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      color: AppThemes.clrBlack,
                                      fontSize: AppFonts.size_medium,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: AppFonts.PoppinsBold),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 4, bottom: 8),
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
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(AllImages.ic_location,
                                          height: 20, width: 20),
                                      SizedBox(width: 8),
                                      Text(
                                        'Singapore',
                                        style: TextStyle(
                                            color: AppThemes.clrBlack,
                                            fontSize:
                                            AppFonts.size_small_medium,
                                            fontWeight: FontWeight.normal,
                                            fontFamily:
                                            AppFonts.PoppinsRegular),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Image.asset(AllImages.ic_heart,
                                          height: 20, width: 20),
                                      SizedBox(width: 8),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            color: AppThemes.clrBlack,
                                            fontSize:
                                            AppFonts.size_small_medium,
                                            fontWeight: FontWeight.normal,
                                            fontFamily:
                                            AppFonts.PoppinsRegular),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          )))
                ],
              ),
            ),
          );
        });
  }
}

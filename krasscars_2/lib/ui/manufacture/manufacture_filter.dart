import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/AppFonts.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/search_bar_widget.dart';
import 'package:krasscars_2/ui/manufacture/filter.dart';

class ManufactureFilter extends StatefulWidget {
  @override
  _ManufactureFilterState createState() => _ManufactureFilterState();
}

class _ManufactureFilterState extends State<ManufactureFilter> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          AppBarWidget2(context, AppString.strBMW, false,false),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.27),
            child: Column(
              children: [
                searchBar(controller, AppString.strSearchCar),
                carList(),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget carList() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 1.30),
        padding: EdgeInsets.only(bottom: 35, left: 30, right: 30),
        itemCount: 5,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Filter()));
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppThemes.clrWhite,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      image: DecorationImage(
                          image: AssetImage(AllImages.img_full_car),
                          fit: BoxFit.cover)),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                      color: Colors.black38,
                    ),
                    child: Center(
                        child: Text(
                      AppString.strBMWM3,
                      style: TextStyle(
                          color: AppThemes.clrWhite,
                          fontSize: AppFonts.size_large,fontFamily: AppFonts.OpenSansBold),
                    )),
                  )),
            ),
          );
        });
  }
}

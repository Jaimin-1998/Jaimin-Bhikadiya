import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/AppString.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/custom_widget/search_bar_widget.dart';

class Brands extends StatefulWidget {
  @override
  _BrandsState createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  TextEditingController controller = TextEditingController();
  List<String> imageList = List<String>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    imageList =[
      AllImages.ic_logo1,
      AllImages.ic_logo2,
      AllImages.ic_logo3,
      AllImages.ic_logo4,
      AllImages.ic_logo5,
      AllImages.ic_logo2,
      AllImages.ic_logo3,
      AllImages.ic_logo2,
      AllImages.ic_logo3,
      AllImages.ic_logo4,
      AllImages.ic_logo1,
      AllImages.ic_logo2,
      AllImages.ic_logo3,
      AllImages.ic_logo4,
      AllImages.ic_logo2,
      AllImages.ic_logo3,
      AllImages.ic_logo4,
      AllImages.ic_logo5,
      AllImages.ic_logo2,
      AllImages.ic_logo3,
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          AppBarWidget2(context, AppString.strBrands,false,false),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.27),
            child: Column(
              children: [
                searchBar(controller, AppString.strSearchBrand),
                logoList(),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget logoList() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 18,
            crossAxisSpacing: 18),
        padding: EdgeInsets.only(bottom: 35, left: 30, right: 30),
        itemCount: imageList.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
                color: AppThemes.clrWhite,
                borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Center(child: Image.asset(imageList[index])),
          );
        });
  }
}

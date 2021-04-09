import 'package:flutter/material.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/custom_widget/appbar_widget.dart';
import 'package:krasscars_2/model/filter_model.dart';

class Filter extends StatefulWidget {
  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  List<FilterModel> filterModel = List<FilterModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    filterModel.add(FilterModel(AllImages.ic_filter1, 'Latest'));
    filterModel.add(FilterModel(AllImages.ic_filter2, 'Popular'));
    filterModel.add(FilterModel(AllImages.ic_filter3, 'A - Z'));
    filterModel.add(FilterModel(AllImages.ic_filter4, 'Z - A'));
    filterModel.add(FilterModel(AllImages.ic_filter5, 'Distance'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Stack(
        children: [
          AppBarWidget2(context, AppString.strFilterAndSort, true, true),
          Padding(
            padding:
                EdgeInsets.only(top: MediaQuery.of(context).size.width * 0.25),
            child: Column(
              children: [filterList()],
            ),
          )
        ],
      )),
    );
  }

  Widget filterList() {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1.10,
            crossAxisCount: 2, mainAxisSpacing: 15, crossAxisSpacing: 15),
        padding: EdgeInsets.only(bottom: 35, left: 30, right: 30),
        itemCount: filterModel.length,
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Card(
            elevation: 6,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              decoration: BoxDecoration(
                  color: index==0? AppThemes.clrWhite:AppThemes.clrPrimary,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
              border: Border.all(color: AppThemes.clrPrimary,width: 3)),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        color: index==0? AppThemes.clrPrimary:AppThemes.clrBlack,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    padding: EdgeInsets.all(15),
                    child: Image.asset(filterModel[index].image,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      filterModel[index].name,
                      style: TextStyle(
                          color: AppThemes.clrBlack,
                          fontFamily: AppFonts.PoppinsRegular,
                          fontSize: AppFonts.size_large),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }
}

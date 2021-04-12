import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:krasscars_2/constants/constants.dart';
import 'package:krasscars_2/model/sidebar_model.dart';
import 'package:krasscars_2/ui/home/brands.dart';
import 'package:krasscars_2/ui/home/home.dart';
import 'package:krasscars_2/ui/manufacture/manufacture_filter.dart';
import 'package:krasscars_2/ui/new_car/new_car.dart';
import 'package:krasscars_2/ui/profile/profile.dart';
import 'file:///F:/Flutter/Live/2nd/Jaimin-Bhikadiya/krasscars_2/lib/ui/service/services%20_details.dart';

class Sidebar extends StatefulWidget {
  @override
  _SidebarState createState() => _SidebarState();
}

class _SidebarState extends State<Sidebar> with TickerProviderStateMixin {
  int currentTab = 0;
 /* final List<Widget> screens1 = [
    HomeScreen(),
    MyOrders(),
    HomeScreen(),
    HomeScreen(),
  ];*/
  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomeScreen();
  @override
  Widget build(BuildContext context) {
    return SimpleHiddenDrawer(
      slidePercent: 60,
      verticalScalePercent: 75,
      contentCornerRadius: 45,
      menu: Menu(),
      screenSelectedBuilder: (position, controller) {
       // print('MenuState  ${controller.state}');
        Widget screenCurrent;
        switch (position) {
          case 0:
            screenCurrent = NewCarAddScreen();
            break;
          case 1:
            screenCurrent = Brands();
            break;
          case 2:
            screenCurrent = ManufactureFilter();
            break;
          case 3:
            screenCurrent = Profile();
            break;
          case 4:
            screenCurrent = HomeScreen();
            break;
          case 5:
            screenCurrent = HomeScreen();
            break;
          case 6:
            screenCurrent = HomeScreen();
            break;
          default:
            screenCurrent = HomeScreen();
            break;
        }
        return Scaffold(
          body: PageStorage(
            child: screenCurrent,
            bucket: bucket,
          ),
          floatingActionButton: FloatingActionButton(
            shape: StadiumBorder(
                side: BorderSide(color: AppThemes.clrBlack, width: 4)),
            backgroundColor: AppThemes.clrPrimary,
            child: Image.asset(AllImages.ic_add),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ServiceDetails()));
            },
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          bottomNavigationBar: BottomAppBar(
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            child: Container(
              height: 70,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[

                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            controller.setSelectedMenuPosition(0,openMenu: false);
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.home,
                              size: 35,
                              color: currentTab == 0
                                  ? AppThemes.clrBlack
                                  : AppThemes.clrGray,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            controller.setSelectedMenuPosition(4,openMenu: false);
                          /*  currentScreen =
                                MyOrders();*/
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              AllImages.ic_transaction,
                              height: 40,
                              width: 40,
                              color:currentTab == 1 ? Colors.black : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 20),
                    ],
                  ),
                  // Right Tab bar icons
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(width: 20),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            controller.setSelectedMenuPosition(6,openMenu: false);
                           /* currentScreen =
                                MessagesScreen(); */// if user taps on this dashboard tab will be active
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(
                              Icons.messenger_rounded,
                              size: 30,
                              color: currentTab == 2
                                  ? AppThemes.clrBlack
                                  : AppThemes.clrGray,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 15),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            controller.setSelectedMenuPosition(10,openMenu: false);
                         /*   currentScreen =
                                ContactUsScreen();*/ // if user taps on this dashboard tab will be active
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Image.asset(
                              AllImages.ic_user,
                              height: 40,
                              width: 40,
                              color:
                                  currentTab == 3 ? Colors.black : Colors.grey,
                            ),
                          ],
                        ),
                      ),

                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> with TickerProviderStateMixin {
  AnimationController _animationController;
  SimpleHiddenDrawerController _controller;
  List<SideBarModel> sideBarModel = List<SideBarModel>();
  @override
  void initState() {
    sideBarModel.add(SideBarModel(AllImages.ic_subscriptions, AppString.strBuyCars));
    sideBarModel.add(SideBarModel(AllImages.ic_cars, AppString.strServiceCars));
    sideBarModel.add(SideBarModel(AllImages.ic_coupon, AppString.strCurrentDeals));
    sideBarModel.add(SideBarModel(AllImages.ic_my_garage, AppString.strMyGarage));
    sideBarModel.add(SideBarModel(AllImages.ic_orders, AppString.strMyOrders));
    sideBarModel.add(SideBarModel(AllImages.ic_support, AppString.strContactUs));
    sideBarModel.add(SideBarModel(AllImages.ic_logout, AppString.strLogout));


    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300));
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _controller = SimpleHiddenDrawerController.of(context);
    _controller.addListener(() {
      if (_controller.state == MenuState.open) {
        _animationController.forward();
      }

      if (_controller.state == MenuState.closing) {
        _animationController.reverse();
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: AppThemes.clrPrimary,
            child: ListView(
              padding:
                  EdgeInsets.only(top: 48, left: 20, right: 15, bottom: 20),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 85,
                          width: 85,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: AppThemes.clrBlack),
                              image: DecorationImage(
                                  image: AssetImage(AllImages.img_user_profile1),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15, bottom: 2),
                      child: Text(AppString.strHeshamSqrat,
                          style: TextStyle(
                              color: AppThemes.clrBlack,
                              fontSize: AppFonts.size_triple_extra_large,
                              fontWeight: FontWeight.bold,
                          fontFamily: AppFonts.PoppinsBold)),
                    ),
                    Text(AppString.strAdminUser,
                        style: TextStyle(
                            color: AppThemes.clrBlack,
                            fontSize: AppFonts.size_medium,
                            fontWeight: FontWeight.normal)),
                    SizedBox(
                      height: 20,
                    ),
                    MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      removeLeft: true,
                      child: ListView.builder(
                          shrinkWrap: true,
                          physics: BouncingScrollPhysics(),
                          itemCount: sideBarModel.length,
                          itemBuilder: (context, index) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _controller.setSelectedMenuPosition(index);
                                  },
                                  child: Container(
                                    padding: EdgeInsets.only(top: 12, bottom: 12),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          sideBarModel[index].icon,
                                          height: 25,
                                          width: 25,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 20),
                                          child: Text(sideBarModel[index].name,
                                              style: TextStyle(
                                                  color: AppThemes.clrBlack,
                                                  fontSize: AppFonts.size_medium,
                                                  fontWeight: FontWeight.w500,
                                              fontFamily: AppFonts.PoppinsSemiBold)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                index==4 ?Padding(
                                  padding:  EdgeInsets.fromLTRB(0,20,MediaQuery.of(context).size.width*0.45,20),
                                  child: Divider(color: AppThemes.clrGray,height: 1.50),
                                ):Container()
                              ],
                            );
                          }),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
              margin: EdgeInsets.only(top: 45, right: 40),
              alignment: Alignment.topRight,
              child: GestureDetector(
                  onTap: () {
                    SimpleHiddenDrawerController.of(context).toggle();
                  },
                  child: Image.asset(AllImages.ic_backButton))),
        ],
      ),
    );
  }
}

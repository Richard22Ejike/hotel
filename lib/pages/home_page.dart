import 'package:flutter/material.dart';
import 'package:hotel/pages/Calender/Calender.dart';
import 'package:hotel/pages/Employees/Employees.dart';
import 'package:hotel/pages/Inventory/inventory.dart';
import 'package:hotel/pages/Settings/Settings.dart';
import 'package:hotel/pages/finances/finance.dart';
import 'package:hotel/pages/rooms/room.dart';

import 'package:provider/provider.dart';

import '../common/app_colors.dart';
import '../common/app_responsive.dart';
import '../controllers/menu_controller.dart';
import 'dashboard/dashboard.dart';
import 'widget/side_bar_menu.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: SideBar(),
      key: Provider.of<MenuController>(context, listen: false).scaffoldKey,
      backgroundColor:Colors.transparent,
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// Side Navigation Menu
            /// Only show in desktop
            if (AppResponsive.isDesktop(context))
              Expanded(
                child: Drawer(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                  child: Container(
                    color: Colors.transparent,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: Text(
                            "HOTEL MR",
                            style: TextStyle(
                              color: AppColor.yellow,
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        DrawerListTile(
                          title: "Dashboard",
                          icon: "assets/menu_home.png",
                          press: () {
                            setState(() {
                              index = 0;
                            });
                          },
                        ),
                        DrawerListTile(
                          title: "Employees",
                          icon: "assets/menu_recruitment.png",
                          press: () {
                            setState(() {
                              index = 1;
                            });
                          },
                        ),
                        DrawerListTile(
                          title: "Inventory",
                          icon: "assets/menu_onboarding.png",
                          press: () {
                            setState(() {
                              index = 2;
                            });
                          },
                        ),
                        DrawerListTile(
                          title: "Rooms",
                          icon: "assets/menu_report.png",
                          press: () {
                            setState(() {
                              index = 3;
                            });
                          },
                        ),

                        DrawerListTile(
                          title: "Calendar",
                          icon: "assets/menu_calendar.png",
                          press: () {
                            setState(() {
                              index = 4;
                            });
                          },
                        ),
                        DrawerListTile(
                          title: "Finances",
                          icon: "assets/menu_report.png",
                          press: () {
                            setState(() {
                              index = 5;
                            });
                          },
                        ),
                        DrawerListTile(
                          title: "Settings",
                          icon: "assets/menu_settings.png",
                          press: () {
                            setState(() {
                              index = 6;
                            });
                          },
                        ),
                        Spacer(),

                      ],
                    ),
                  ),
                ),
              ),

            /// Main Body Part

            Expanded(
              flex: 4,
              child: Builder(builder: (BuildContext context) {
                if (index == 0){
                  return Dashboard();
                }
                if (index == 1){
                  return EmployeePage();
                }
                if (index == 2){
                  return InventoryPage();
                }
                if (index == 3){
                  return RoomPage();
                }
                if (index == 4){
                  return CalendarPage();
                }
                if (index == 5){
                  return FinancePage();
                }
                if (index == 6){
                  return SettingPage();
                }
                return Dashboard();
              },),
            ),
          ],
        ),
      ),
    );
  }
}

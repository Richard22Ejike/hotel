
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotel/pages/Inventory/widgets/Category.dart';
import 'package:hotel/pages/Inventory/widgets/NotificationInventoryWidget.dart';
import 'package:hotel/pages/Inventory/widgets/frottedbox.dart';
import 'package:hotel/pages/Inventory/widgets/items.dart';

import '../../common/app_colors.dart';
import '../../common/app_responsive.dart';
import '../Employees/widget/staff_data.dart';
import '../dashboard/widget/profile_card_widget.dart';
import '../dashboard/widget/recruitment_data_widget.dart';
import '../widget/header_widget.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return
    Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          /// Header Part
          HeaderWidget(text: 'Inventory', icon1: Icons.search, icon2: Icons.send, icon3: Icons.notifications_none_rounded,),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        const CategoryInventoryPage(),


                        ItemsWidget(),
                        if (AppResponsive.isMobile(context)) ...{
                           NotificationInventory(),
                        },
                      ],
                    ),
                  ),
                  if (!AppResponsive.isMobile(context))
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [

                            SizedBox(
                              height: 20,
                            ),
                            NotificationInventory(),
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotel/pages/Employees/widget/staff_data.dart';


import '../../common/app_colors.dart';
import '../../common/app_responsive.dart';
import '../dashboard/widget/calender_widget.dart';
import '../dashboard/widget/profile_card_widget.dart';
import '../dashboard/widget/recruitment_data_widget.dart';
import '../widget/header_widget.dart';


class EmployeePage extends StatelessWidget {
  const EmployeePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: AppColor.bgColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          /// Header Part
          HeaderWidget(text: 'Employees', icon1: Icons.search, icon2: Icons.send, icon3: Icons.notifications_none_rounded,),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        if (AppResponsive.isMobile(context)) ...{
                          ProfileCardWidget(),
                        },
                        StaffDataWidget(),


                      ],
                    ),
                  ),
                  if (!AppResponsive.isMobile(context))
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [

                            ProfileCardWidget(),
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
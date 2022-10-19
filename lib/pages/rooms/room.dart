import 'package:flutter/material.dart';
import 'package:hotel/pages/rooms/widget/Booking.dart';
import 'package:hotel/pages/rooms/widget/RoomData.dart';
import 'package:hotel/pages/rooms/widget/placeBooking.dart';
import 'package:hotel/pages/widget/header_widget.dart';

import '../../common/app_colors.dart';
import '../../common/app_responsive.dart';
import '../dashboard/widget/recruitment_data_widget.dart';

class RoomPage extends StatelessWidget {
  const RoomPage({super.key});

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
          HeaderWidget(text: 'Rooms', icon1:Icons.search, icon2: Icons.send, icon3: Icons.notifications_none_rounded,),
          Expanded(
            child: SingleChildScrollView(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: Column(
                        children: [

                          SizedBox(
                            height: 20,
                          ),
                          RoomDataWidget(),
                          if (AppResponsive.isMobile(context)) ...{

                            BookingWidget(),
                            SizedBox(
                              height: 20,
                            ),
                            PlaceBookingWidget(),
                          },

                        ],
                      ),
                    ),
                  ),
                  if (!AppResponsive.isMobile(context))
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          children: [
                           BookingWidget(),
                            SizedBox(
                              height: 20,
                            ),
                          PlaceBookingWidget(),
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
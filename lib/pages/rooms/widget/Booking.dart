import 'package:flutter/material.dart';

import '../../../common/app_colors.dart';


class BookingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Column(
            children: [
              Text(
                "Customer",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text("Room Number"),
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          profileListTile("Booking Date", "18-Apr-2021"),
          profileListTile("Time", "12:00pm"),

        ],
      ),
    );
  }

  Widget profileListTile(text, value) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Text(
            value,
            style:
            TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
          ),
        ],
      ),
    );
  }
}

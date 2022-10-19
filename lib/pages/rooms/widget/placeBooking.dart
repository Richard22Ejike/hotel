import 'package:flutter/material.dart';
import 'package:hotel/pages/widget/textfeild.dart';

import '../../../common/app_colors.dart';


class PlaceBookingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Book Room",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),

          textfield(name: "Customer"),

          textfield(name: "Date"),
          textfield(name: "Time"),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary:  AppColor.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(16),
              ),
              onPressed: (){

              },
              child: Text("Place Booking",style: TextStyle(
                  fontWeight: FontWeight.bold, color: AppColor.black
              ),))


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

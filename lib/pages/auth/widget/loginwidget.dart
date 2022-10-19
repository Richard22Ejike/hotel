import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class Loginwidget extends StatelessWidget {
  const Loginwidget({
    Key? key,
    required this.bottomtiles,
  }) : super(key: key);

  final List bottomtiles;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Stack(
        children:  [
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',

                    ),
                    fit: BoxFit.cover
                )
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.yellowAccent,
                      Colors.black12
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter
                )
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children:  [
                    Icon(FontAwesomeIcons.hotel,
                      size: 15,
                      color: Colors.white,),
                    Text('hotel',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                      ),)
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Keep Inventory and data. \nInformation",
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 49,
                      ),),
                    SizedBox(height: 16,),
                    Container(
                      padding: EdgeInsets.all( 4),
                      decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                offset:Offset(0,2),
                                blurRadius: 5,
                                color: Colors.black12
                            )

                          ],
                          color: Colors.black87,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.black45,
                            maxRadius:15,
                            child: Icon(Icons.play_arrow,
                              color: Colors.white,
                              size: 15,),
                          ),
                          SizedBox(width: 8,),
                          Text("Watch Demo",
                              style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 11,
                              )
                          ),
                          SizedBox(width: 8,),
                        ],
                      ),
                    )
                  ],
                ),
                const Spacer(),
                Container(
                  constraints: BoxConstraints(
                      maxWidth: 400
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  bottomtiles.map((e) => Text(e,   style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),)).toList(),
                  ),
                )
              ],

            ),
          )
        ],
      ),
    );
  }
}
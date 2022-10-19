

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../../controllers/menu_controller.dart';
import '../../home_page.dart';

class logindetails extends StatelessWidget {
  const logindetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      color: Color.fromARGB(52, 117, 117, 117),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                color: Colors.white,
                fontSize: 18
            ),),
          SizedBox(height: 8,),
          TextField(
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.mailBulk,
                size: 15,
                color: Colors.white12,),
              hintText: "Email",
              hintStyle: TextStyle(
                color: Colors.grey[300],
              ),
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 16
              ),
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          SizedBox(height:8),
          TextField(
            obscureText: true,
            style: TextStyle(
              color: Colors.white,
            ),
            decoration: InputDecoration(
              prefixIcon: Icon(FontAwesomeIcons.lock,
                size: 15,
                color: Colors.white12,),
              hintText: "Password",
              hintStyle: TextStyle(
                color: Colors.grey[300],
              ),
              filled: true,
              contentPadding: EdgeInsets.symmetric(
                  horizontal: 16
              ),
              fillColor: Colors.grey,
              border: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.transparent
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          SizedBox(height: 8,),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: EdgeInsets.all(16),
              ),
              onPressed: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MultiProvider(
                        providers: [
                          ChangeNotifierProvider(create: (context) => MenuController()),
                        ],
                        child: HomePage(),
                      ),
                    )
                );
              },
              child: Text("login"))
        ],
      ),

    );
  }
}
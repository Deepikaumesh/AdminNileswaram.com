import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Admin_Display Catagory/Public_organisation_display.dart';
import '../Admin_Display Catagory/Tourist_Place_display.dart';
import '../Local_Body/Local_Body_Reg.dart';
import '../Local_Body_Display/Local_Body_Display.dart';






class Public_Tourist_Local_Display_Container extends StatefulWidget {
  @override
  Public_Tourist_Local_Display_ContainerState createState() => new Public_Tourist_Local_Display_ContainerState();
}

class Public_Tourist_Local_Display_ContainerState extends State<Public_Tourist_Local_Display_Container> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      padding: EdgeInsets.all(10),
      height: 140,
      width: 340,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Tourist_Place_Display()));

                    },
                    child: new Image.asset(
                      'assets/tourist.png',
                      height: 60.0,
                      width: 70.0,
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Tourist_Place_Display()));
                    // Navigator.push(context,MaterialPageRoute(builder: (context)=>Hotel_Sub_Display()));
                  }, child: Text("Tourist Places",style:GoogleFonts.quicksand(
                      color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold,fontSize: 12),))
                  // new Text(
                  //   "shop",
                  //   style:
                  //       TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                  // )
                ],
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  GestureDetector(
                    onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Public_Organisation_Display()));
                    },
                    child: new Image.asset(
                      'assets/public.png',
                      height: 60.0,
                      width: 70.0,
                    ),
                  ),
                  TextButton(onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Public_Organisation_Display()));
                  }, child: Text(

                    "Public organisations",style:GoogleFonts.quicksand(
                    color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold,fontSize: 12,),))

                ],
              ),




              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap:(){
                     Navigator.push(context, MaterialPageRoute(builder: (context)=>Local_Body_Display()));
                    } ,
                    child: new Image.asset(
                      'assets/local_body.png',
                      height: 60.0,
                      width: 70.0,
                    ),
                  ),
                  TextButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Local_Body_Display()));
                  }, child: Text("Local Body",style:GoogleFonts.quicksand(color: Colors.blueGrey.shade900,fontWeight: FontWeight.bold,fontSize: 12),))
                ],
              ),
            ],
          ),
              ],
      ),
    );
  }
}

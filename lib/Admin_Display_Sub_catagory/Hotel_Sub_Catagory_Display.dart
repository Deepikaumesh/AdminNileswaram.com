import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'GentsDisplay.dart';
import 'KidsDisplay.dart';
import 'LadiesDisplay.dart';
import 'NonVegHotelDisplay.dart';
import 'UndergarmentsDisplay.dart';
import '../Admin_Display Catagory/HotelDisplay.dart';

class Hotel_Sub_Display extends StatefulWidget {
  const Hotel_Sub_Display({Key? key}) : super(key: key);

  @override
  _Hotel_Sub_DisplayState createState() => _Hotel_Sub_DisplayState();
}

class _Hotel_Sub_DisplayState extends State<Hotel_Sub_Display> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Select Sub Catagory",style: GoogleFonts.prompt(color: Colors.red.shade900),),backgroundColor: Colors.white,
        elevation: 0,centerTitle: true,leading: GestureDetector(
            onTap: () { Navigator.pop(context);},
            child: Icon(
              Icons.arrow_back_rounded,color: Colors.red.shade900,  // add custom icons also
            ),
          ),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/restaurant.png",
                height:MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/3,
              ),
              Card(
                  margin: EdgeInsets.all(30),
                  shape:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12)
                  ),
                  child: Center(child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Display_Restaurant_data()));
                  }, child:Text("Veg Hotels",style: GoogleFonts.prompt(fontSize: 21,),)))),

              Card(
                  margin: EdgeInsets.all(30),
                  shape:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12)
                  ),
                  child: Center(child: TextButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Display_NonVeghotel_data()));
                  }, child:Text("Non Veg Hotels",style: GoogleFonts.prompt(fontSize: 21,),)))),


            ],
          ),
        ),
      ),
    );
  }
}

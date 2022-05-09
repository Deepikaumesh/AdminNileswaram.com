import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Hotel_Sub_Sections/Non_Veg_Catagory.dart';
import 'Hotel_Sub_Sections/Veg_Catagory.dart';


class Hotel_Sub extends StatefulWidget {
  const Hotel_Sub({Key? key}) : super(key: key);

  @override
  _Hotel_SubState createState() => _Hotel_SubState();
}

class _Hotel_SubState extends State<Hotel_Sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Sub Catagory",style: GoogleFonts.prompt(color: Colors.red.shade900),),backgroundColor: Colors.white,
        elevation: 0,centerTitle: true,leading: GestureDetector(
            onTap: () { Navigator.pop(context);},
            child: Icon(
              Icons.arrow_back_rounded,color: Colors.red.shade900,  size: 35,  // add custom icons also
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
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Veg_Catagory()));
                },
                child: Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Veg_Catagory()));
                    }, child:Text("Veg Hotel",style: GoogleFonts.prompt(fontSize: 21,),)))),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Non_Veg_Catagory()));
                },
                child: Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Non_Veg_Catagory()));
                    }, child:Text("Non Veg Hotel",style: GoogleFonts.prompt(fontSize: 21,),)))),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

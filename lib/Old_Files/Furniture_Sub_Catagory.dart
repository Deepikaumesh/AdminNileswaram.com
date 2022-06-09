import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Home_Furnitures.dart';



class Furniture_Sub extends StatefulWidget {
  const Furniture_Sub({Key? key}) : super(key: key);

  @override
  _Furniture_SubState createState() => _Furniture_SubState();
}

class _Furniture_SubState extends State<Furniture_Sub> {
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
                "assets/furniture.png",
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
                   // Navigator.push(context,MaterialPageRoute(builder: (context)=>Furniture_Reg_Page()));
                  }, child:Text("Home Furnitures",style: GoogleFonts.prompt(fontSize: 21,),)))),

              Card(
                  margin: EdgeInsets.all(30),
                  shape:  OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.black12)
                  ),
                  child: Center(child: TextButton(onPressed: (){
                   // Navigator.push(context,MaterialPageRoute(builder: (context)=>Furniture_Reg_Page()));
                  }, child:Text("Office Furnitures",style: GoogleFonts.prompt(fontSize: 21,),)))),


            ],
          ),
        ),
      ),
    );
  }
}
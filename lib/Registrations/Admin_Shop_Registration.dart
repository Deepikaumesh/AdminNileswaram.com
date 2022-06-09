import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Old_Files/Furniture_Sub_Catagory.dart';
import '../All_Shop_Registrations/Beautyparler_Registration.dart';
import '../All_Shop_Registrations/Grocery_Registration.dart';
import '../All_Shop_Registrations/Hardware_Registration.dart';
import '../All_Shop_Registrations/Home_Appliance_Registration.dart';
import '../All_Shop_Registrations/MedicalShop_Registration.dart';
import '../All_Shop_Registrations/barbershop_Registration.dart';
import '../All_Shop_Registrations/fruits&veg_Registration.dart';
import '../All_Shop_Registrations/hospital_Registration.dart';

class Admin_Business_Reg_Catagory extends StatefulWidget {
  const Admin_Business_Reg_Catagory({Key? key}) : super(key: key);

  @override
  _Admin_Business_Reg_CatagoryState createState() => _Admin_Business_Reg_CatagoryState();
}

class _Admin_Business_Reg_CatagoryState extends State<Admin_Business_Reg_Catagory> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Registration Catagory",style: GoogleFonts.prompt(color: Colors.red.shade900),),
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: true,
          leading: GestureDetector(
            onTap: () { Navigator.pop(context);},
            child: Icon(
              Icons.arrow_back_rounded,color: Colors.red.shade900,  // add custom icons also
            ),
          ), ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          width:MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
            child: Column(
             //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               //SizedBox(height: 20,),
                Card(
                  margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12)
          ),
                    child: Center(child: TextButton(onPressed: (){
                      //Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                    }, child:Text("Textile",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                   // margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                  margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child:TextButton(onPressed: (){
                     // Navigator.push(context,MaterialPageRoute(builder: (context)=>Hotel_Sub()));
                    }, child:Text("Hotel",style: GoogleFonts.prompt(fontSize: 21,),))),),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Grocery_Reg_Page()));
                    }, child:Text("Grocery",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                  margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child:Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Furniture_Sub()));
                    }, child:Text("Furniture",style: GoogleFonts.prompt(fontSize: 21,),))),),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Hardware_Reg_Page()));
                    }, child:Text("Hardware",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child:Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Beauty_Parler_RegPage()));
                    }, child:Text("Beauty Parler",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Barbershop_RegPage()));
                    }, child:Text("Barber Shop",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeAplliance_RegPage()));
                    }, child:Text("Home Appliance",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>MedicalShop_RegPage()));
                    }, child:Text("Medical Shop",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child:Center(child:  TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Fruits$Veg_RegPage()));
                    }, child:Text("Fruits and Vegitables",style: GoogleFonts.prompt(fontSize: 21,),)))),

                Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child:Center(child:  TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>hospital_Reg_Page()));
                    }, child:Text("Hospital",style: GoogleFonts.prompt(fontSize: 21,),)))),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

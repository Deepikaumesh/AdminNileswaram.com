import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../All_Shop_Registrations/AbTest_Registration.dart';
import '../All_Shop_Registrations/Accountant_Registration.dart';
import '../All_Shop_Registrations/Acp_Registration.dart';
import '../All_Shop_Registrations/Acupuncture_Registration.dart';
import '../All_Shop_Registrations/Adfilm_Registration.dart';
import '../All_Shop_Registrations/Advertising_Registration.dart';
import '../All_Shop_Registrations/Advocate_Registration.dart';
import '../All_Shop_Registrations/Agri_Registration.dart';
import '../All_Shop_Registrations/Agriseeds_Registration.dart';
import '../All_Shop_Registrations/Aircondi_Domestic_Registration.dart';
import '../All_Shop_Registrations/Aircondi_Industrial_Registration.dart';
import '../All_Shop_Registrations/Allergist_Registration.dart';
import '../All_Shop_Registrations/Aluminium_fabri_Registration.dart';
import '../All_Shop_Registrations/Beautyparler_Registration.dart';
import '../All_Shop_Registrations/Furniture_Registration.dart';
import '../All_Shop_Registrations/Grocery_Registration.dart';
import '../All_Shop_Registrations/Hardware_Registration.dart';
import '../All_Shop_Registrations/Home_Appliance_Registration.dart';
import '../All_Shop_Registrations/MedicalShop_Registration.dart';
import '../All_Shop_Registrations/Restaurant_Registration.dart';
import '../All_Shop_Registrations/Textile_Registration.dart';
import '../All_Shop_Registrations/barbershop_Registration.dart';
import '../All_Shop_Registrations/fruits&veg_Registration.dart';
import '../All_Shop_Registrations/hospital_Registration.dart';


import '../Old_Files/Furniture_Sub_Catagory.dart';


class Business_Reg_Catagory extends StatefulWidget {
  const Business_Reg_Catagory({Key? key}) : super(key: key);

  @override
  _Business_Reg_CatagoryState createState() => _Business_Reg_CatagoryState();
}

class _Business_Reg_CatagoryState extends State<Business_Reg_Catagory> {
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
              Icons.arrow_back_rounded,color: Colors.red.shade900,
              size: 35,// add custom icons also
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
                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Ab_Test_Reg())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Ab_Test_Reg()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Ab_Test_Registration",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),















                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Accountant_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Accountant_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Accountant",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),



                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Acp_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Acp_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Acp Registration",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),



                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Acupuncture_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Acupuncture_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Acupuncture Registration",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),





                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Advertising_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Advertising_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Advertising Registration",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),




                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Advocate_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Advocate_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Advocate Registration",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Agri_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Agri_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Agriculture Machinery",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Agriseeds_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Agriseeds_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Agriculture Seeds",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Aircondi_Domestict_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Aircondi_Domestict_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Aircondition Domestic",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Aircondi_Industrial_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Aircondi_Industrial_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Aircondition Industrial",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),


                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Allergist_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Allergist_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Allergist",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Aluminum_Fabri_RegPage())
                    );
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Aluminum_Fabri_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Aluminum Fabricator",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),





































                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_RegPage()));
                  },
                  child: Card(
                    margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.black12)
          ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_RegPage()));
                        // Navigator.push(context,MaterialPageRoute(builder: (context)=>Textile_Sub()));
                      }, child:Text("Textile",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Restaurant_Reg_Page()));
                  },
                  child: Card(
                     // margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
                    margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child:TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Restaurant_Reg_Page()));
                      }, child:Text("Restaurant",style: GoogleFonts.prompt(fontSize: 21,),))),),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Grocery_Reg_Page()));
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Grocery_Reg_Page()));
                      }, child:Text("Grocery",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Furniture_Reg_Page()));
                  },
                  child: Card(
                    margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child:Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Furniture_Reg_Page()));
                      }, child:Text("Furniture",style: GoogleFonts.prompt(fontSize: 21,),))),),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Hardware_Reg_Page()));
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Hardware_Reg_Page()));
                      }, child:Text("Hardware",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Beauty_Parler_RegPage()));
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child:Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Beauty_Parler_RegPage()));
                      }, child:Text("Beauty Parler",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Barbershop_RegPage()));
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Barbershop_RegPage()));
                      }, child:Text("Barber Shop",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeAplliance_RegPage()));
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeAplliance_RegPage()));
                      }, child:Text("Home Appliance",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>MedicalShop_RegPage()));
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child: Center(child: TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>MedicalShop_RegPage()));
                      }, child:Text("Medical Shop",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){

                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child:Center(child:  TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>Fruits$Veg_RegPage()));
                      }, child:Text("Fruits and Vegitables",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),

                GestureDetector(
                  onTap: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>hospital_Reg_Page()));
                  },
                  child: Card(
                      margin: EdgeInsets.all(30),
                      shape:  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.black12)
                      ),
                      child:Center(child:  TextButton(onPressed: (){
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>hospital_Reg_Page()));
                      }, child:Text("Hospital",style: GoogleFonts.prompt(fontSize: 21,),)))),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}

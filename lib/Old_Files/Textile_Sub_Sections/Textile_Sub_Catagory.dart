import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../Textile_Registration.dart';
import 'Gents_Section.dart';
import 'Kids_Section.dart';
import 'Ladies_Section.dart';
import 'UnderGarments_Section.dart';

class Textile_Sub extends StatefulWidget {
  const Textile_Sub({Key? key}) : super(key: key);

  @override
  _Textile_SubState createState() => _Textile_SubState();
}

class _Textile_SubState extends State<Textile_Sub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(title: Text("Sub Catagory",style: GoogleFonts.prompt(color: Colors.red.shade900),),backgroundColor: Colors.white,
        elevation: 0,centerTitle: true,leading: GestureDetector(
            onTap: () { Navigator.pop(context);},
            child: Icon(
              Icons.arrow_back_rounded,color: Colors.red.shade900,    size: 35,// add custom icons also
            ),
          ),),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/cloth.png",
                height:MediaQuery.of(context).size.height/5,
                width: MediaQuery.of(context).size.width/3,
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
                    }, child:Text("Family Store",style: GoogleFonts.prompt(fontSize: 21,),)))),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Gents_Section()));
                },
                child: Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Gents_Section()));
                    }, child:Text("Gents",style: GoogleFonts.prompt(fontSize: 21,),)))),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Ladies_Section()));
                },
                child: Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Ladies_Section()));
                    }, child:Text("Ladies",style: GoogleFonts.prompt(fontSize: 21,),)))),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Kids_Section()));
                },
                child: Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>Kids_Section()));
                    }, child:Text("Kids",style: GoogleFonts.prompt(fontSize: 21,),)))),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>UnderGarments_Section()));
                },
                child: Card(
                    margin: EdgeInsets.all(30),
                    shape:  OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.black12)
                    ),
                    child: Center(child: TextButton(onPressed: (){
                      Navigator.push(context,MaterialPageRoute(builder: (context)=>UnderGarments_Section()));
                    }, child:Text("Under Garments",style: GoogleFonts.prompt(fontSize: 21,),)))),
              ),



            ],
          ),
        ),
      ),
    );
  }
}

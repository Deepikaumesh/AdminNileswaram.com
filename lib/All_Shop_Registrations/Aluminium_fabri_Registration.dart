import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

import '../Upload Shop Image/textile_image.dart';

//import 'getdata.dart';

class Aluminum_Fabri_RegPage extends StatefulWidget {
  @override
  _Aluminum_Fabri_RegPageState createState() => _Aluminum_Fabri_RegPageState();
}

class _Aluminum_Fabri_RegPageState extends State<Aluminum_Fabri_RegPage> {
  TextEditingController name = new TextEditingController();
  TextEditingController address = new TextEditingController();
  TextEditingController blood = new TextEditingController();
  TextEditingController phone = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController mobile = new TextEditingController();
  TextEditingController watsap= new TextEditingController();
  TextEditingController website = new TextEditingController();
  TextEditingController facebook = new TextEditingController();
  TextEditingController insta = new TextEditingController();
  TextEditingController other_pro = new TextEditingController();

  late bool status;
  late String message;
  //String serverUrl = "https://astrasoftware.in/directoryapp/Nileswaram.com/more_insert_test.php";
  String serverUrl = "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Catagory_Registration/A_REg/aluminium.php";

  @override
  void initState() {
    name = TextEditingController(text: '(aluminium)');
    address = TextEditingController();
    blood = TextEditingController();
    phone = TextEditingController();
    email = TextEditingController();
    mobile = TextEditingController();
    watsap = TextEditingController();
    website = TextEditingController();
    facebook = TextEditingController();
    insta = TextEditingController();
    other_pro= TextEditingController();


    status = false;
    message = "";

    super.initState();
  }



  Future<void> submitData() async {
    var send = await http.post(Uri.parse(serverUrl), body:
    {
      "name": name.text,
      "address": address.text,
      "blood": blood.text,
      "phone":phone.text,
      "email":email.text,
      "mobile":mobile.text,
      "watsap":watsap.text,
      "website":website.text,
      "facebook":facebook.text,
      "insta":insta.text,
      "other_pro":other_pro.text,


    });



    if (send.statusCode == 200) {
      var data = json.decode(send.body);
      var responseMessage = data["message"];
      var responseError = data["error"];
      if (responseError) {
        setState(() {
          status = false;
          message = responseMessage;
        });
      } else {
        name.clear();
        address.clear();
        blood.clear();
        phone.clear();
        email.clear();
        mobile.clear();
        watsap.clear();
        website.clear();
        facebook.clear();
        insta.clear();
        other_pro.clear();

        setState(() {
          status = true;
          message = responseMessage;
        });
      }
    } else {
      setState(() {
        message = "Error:Server error";
        status = false;
      });
    }
  }

  Widget _buildName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: name,
        decoration: InputDecoration(labelText: "Enter Name",prefix: Text("(do not remove!)",),),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildaddress() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: address,
        decoration: InputDecoration(labelText: "Enter Address"),
        keyboardType: TextInputType.multiline,
        maxLines: 3,
      ),
    );
  }
  Widget _buildblood() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: blood,
        decoration: InputDecoration(labelText: "* Enter Blood Group"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildphone() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: phone,
        decoration: InputDecoration(labelText: "* Enter Phone Number"),
        keyboardType: TextInputType.phone,
      ),
    );
  }
  Widget _buildemail() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: email,
        decoration: InputDecoration(labelText: "Enter Email Id"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildmobile() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: mobile,
        decoration: InputDecoration(labelText: "Enter Mobile Number"),
        keyboardType: TextInputType.phone,
      ),
    );
  }

  Widget _buildwatsap() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: watsap,
        decoration: InputDecoration(labelText: "Enter Watsapp Number"),
        keyboardType: TextInputType.number,
      ),
    );
  }
  Widget _buildwebsite() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: website,
        decoration: InputDecoration(labelText: "Enter Website Address"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildfacebook() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller: facebook,
        decoration: InputDecoration(labelText: "Enter Facebook Id/Link"),
        keyboardType: TextInputType.text,
      ),
    );
  }

  Widget _buildinsta() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child: TextField(
        controller:insta,
        decoration: InputDecoration(labelText: "Enter Instagram Id",),
        keyboardType: TextInputType.text,
      ),
    );
  }
  Widget _buildother_pro() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
      child:
      TextField(
        controller:other_pro,
        decoration: InputDecoration(labelText: "Enter Your other product details",
   border: new OutlineInputBorder(
    borderSide: new BorderSide(color: Colors.teal),
        ),
    ),
    keyboardType: TextInputType.multiline,
       maxLines: 10,
      ),
   //    TextField(
   //      textAlignVertical: TextAlignVertical.top,
   //      expands: true,
   //      maxLines: null,
   //      decoration: InputDecoration(
   //          border: OutlineInputBorder(
   //            borderRadius: BorderRadius.circular(3),
   //          ),
   //          hintText: 'Enter Your other product details'),
   //    ),

    );
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Aluminum Fabricator",style: GoogleFonts.prompt(color: Colors.red.shade900),),backgroundColor: Colors.white,
        elevation: 0,centerTitle: true,leading: GestureDetector(
          onTap: () { Navigator.pop(context);},
          child: Icon(
            Icons.arrow_back_rounded,color: Colors.red.shade900,   size: 35, // add custom icons also
          ),
        ),),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                _buildName(),
                _buildaddress(),
                _buildphone(),
                _buildmobile(),
                _buildwatsap(),
                _buildemail(),
                _buildwebsite(),
                _buildfacebook(),
                _buildinsta(),
                _buildblood(),
                SizedBox(height: 10),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //   children: [
                //     Text("Upload Image"),
                //     TextButton(onPressed: (){
                //       Navigator.push(context, MaterialPageRoute(builder: (context)=>Textile_image()));
                //     }, child: Text("Choose File")),
                //
                //   ],
                // ),
                _buildother_pro(),
                SizedBox(height: 10,),

                SizedBox(height: 10,),
                RaisedButton(
                  shape: StadiumBorder(),

                  color: Colors.red.shade900,
                  child: Padding(padding:EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  child: Text("Submit",style: GoogleFonts.prompt(color: Colors.white,fontSize: 25),)),
                  onPressed: () {
                    setState(() {
                    });
                    submitData();
                  },
                ),
                Text( status?message:message),









              ],
            ),
          ),
        ),
      ),
    );
  }
}
class Dataa {
  //late int id;
  late bool name;
  late bool address;
 late String phone;
  late String blood;
  late String email;

  Dataa({
    required this.name,
    required this.address,
    required this.phone,
    required this.blood,
    required this.email,
    //required this.id,
  });
  factory Dataa.fromjson(Map<String,dynamic>json)
  {
    return Dataa(
      name:json['name'] ,
      address:json['email'],
      //phone: 'phone',
      blood: 'blood', phone: 'phone',
    email: 'email');
    //id: json['id']);

  }
}



//https://astrasoftware.in/directoryapp/getdata.php
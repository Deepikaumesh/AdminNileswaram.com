import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import '../Main_Files/Admin_HomPage.dart';


class Shop_Business_Update extends StatefulWidget {
  final List list;
  final int index;

  Shop_Business_Update({required this.list, required this.index});

  @override
  _Shop_Business_UpdateState createState() => new _Shop_Business_UpdateState();
}

class _Shop_Business_UpdateState extends State<Shop_Business_Update> {

  TextEditingController catagorycontroller = TextEditingController();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController mobilecontroller = TextEditingController();
  TextEditingController watsapcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController websitecontroller = TextEditingController();
  TextEditingController facebookcontroller = TextEditingController();
  TextEditingController instalcontroller = TextEditingController();
  TextEditingController bloodcontroller = TextEditingController();
  TextEditingController other_procontroller = TextEditingController();


  void UpdateData() {
    var url ="https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Update/Shop_Business.php";
    http.post(Uri.parse(url),
        body: {
          "id": widget.list[widget.index]['id'],
          "name": namecontroller.text,
          "address": addresscontroller.text,
          "catagory":catagorycontroller.text,
          "phone":phonecontroller.text,
          "mobile":mobilecontroller.text,
          "watsap":watsapcontroller.text,
          "email":emailcontroller.text,
          "website":websitecontroller.text,
          "facebook":facebookcontroller.text,
          "insta":instalcontroller.text,
          "blood":bloodcontroller.text,
          "other_pro":other_procontroller.text,

        });
  }


  @override
  void initState() {
    namecontroller= new TextEditingController(text: widget.list[widget.index]['name'] );
    addresscontroller= new TextEditingController(text: widget.list[widget.index]['address'] );
    catagorycontroller= new TextEditingController(text: widget.list[widget.index]['catagory'] );
    phonecontroller= new TextEditingController(text: widget.list[widget.index]['phone'] );
    mobilecontroller= new TextEditingController(text: widget.list[widget.index]['mobile'] );
    watsapcontroller= new TextEditingController(text: widget.list[widget.index]['watsap'] );
    emailcontroller= new TextEditingController(text: widget.list[widget.index]['email'] );
    websitecontroller= new TextEditingController(text: widget.list[widget.index]['website'] );
    facebookcontroller= new TextEditingController(text: widget.list[widget.index]['facebook'] );
    instalcontroller= new TextEditingController(text: widget.list[widget.index]['insta'] );
    bloodcontroller= new TextEditingController(text: widget.list[widget.index]['blood'] );
    other_procontroller= new TextEditingController(text: widget.list[widget.index]['other_pro'] );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text(
          "EDIT DATA",
          style: GoogleFonts.prompt(color: Colors.red.shade900),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_rounded,
            color: Colors.red.shade900,
            size: 35,// add custom icons also
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: <Widget>[
            new Column(
              children: <Widget>[
                new TextField(
                  controller: catagorycontroller,
                  decoration: new InputDecoration(
                      hintText: "Category", labelText: "Category"),
                ),
                new TextField(
                  controller: namecontroller,
                  decoration: new InputDecoration(
                      hintText: "Name", labelText: "Name"),
                ),
                new TextField(
                  controller: addresscontroller,
                  decoration: new InputDecoration(
                      hintText: "Address", labelText: "Address"),
                ),
                new TextField(
                  controller: phonecontroller,
                  decoration: new InputDecoration(
                      hintText: "Phone Number", labelText: "Phone Number"),
                ),
                new TextField(
                  controller: mobilecontroller,
                  decoration: new InputDecoration(
                      hintText: "Mobile Number", labelText: "Mobile Number"),
                ),
                new TextField(
                  controller: watsapcontroller,
                  decoration: new InputDecoration(
                      hintText: "Watsap Number", labelText: "Watsap Number"),
                ),
                new TextField(
                  controller: emailcontroller,
                  decoration: new InputDecoration(
                      hintText: "Email id", labelText: "Email id"),
                ),
                new TextField(
                  controller:websitecontroller ,
                  decoration: new InputDecoration(
                      hintText: "Website Address", labelText: "Website Address"),
                ),
                new TextField(
                  controller:facebookcontroller ,
                  decoration: new InputDecoration(
                      hintText: "Facebook Link", labelText: "Facebook Link"),
                ),
                new TextField(
                  controller: instalcontroller,
                  decoration: new InputDecoration(
                      hintText: "Instagram Link", labelText: "Instagram Link"),
                ),
                new TextField(
                  controller: bloodcontroller,
                  decoration: new InputDecoration(
                      hintText: "Blood Group", labelText: "Blood Group"),
                ),
                new TextField(
                  controller:other_procontroller ,
                  decoration: new InputDecoration(
                      hintText: "", labelText: "Other Products"),
                ),

                new Padding(
                  padding: const EdgeInsets.all(10.0),
                ),

                RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.red.shade900,
                  onPressed: () {
                    UpdateData();
                    Navigator.of(context).push(
                        new MaterialPageRoute(
                            builder: (BuildContext context)=>Admin_HomePage()
                        )
                    );
                    },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Text(
                      'Submit', style: GoogleFonts.prompt(fontSize: 20,color: Colors.white),
                    ),
                  ),
                ),


              ],
            ),
          ],
        ),
      ),
    );
  }
}

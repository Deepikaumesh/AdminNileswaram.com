import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:open_mail_app/open_mail_app.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:maps_launcher/maps_launcher.dart';



//Creating a class user to store the data;
class User {
  //final String id;
  final String image;
  final String name;
  final String address;
  final String phone;
  final String mobile;
  final String watsap;
  final String email;
  final String website;
  final String insta;
  final String facebook;
  final String blood;
  final String other_pro;



  User({
    //required this.id,
    required this.name,
    required this.image,
    required this.address,
    required this.phone,
    required this.mobile,
    required this.watsap,
    required this.email,
    required this.website,
    required this.facebook,
    required this.insta,
    required this.blood,
    required this.other_pro,


  });
}



class Ab_Test_Display extends StatefulWidget {
  @override
  _Ab_Test_DisplayState createState() => _Ab_Test_DisplayState();
}

class _Ab_Test_DisplayState extends State<Ab_Test_Display> {


//Applying get request.

  Future<List<User>> getRequest() async {
    //replace your restFull API here.
    String url =
        "https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Catagory_Display/A/ab_Test_Display.php";


    final response = await http.get(Uri.parse(url));

    var responseData = json.decode(response.body);

    //Creating a list to store input data;
    List<User> users = [];
    for (var singleUser in responseData) {
      User user = User(
        // id: singleUser["id"].toString(),
        name: singleUser["name"].toString(),
        image: singleUser["image"].toString(),
        address: singleUser["address"].toString(),
        phone: singleUser["phone"].toString(),
        mobile:singleUser["mobile"].toString(),
        watsap: singleUser["watsap"].toString(),
        email: singleUser["email"].toString(),
          website: singleUser["website"].toString(),
        facebook: singleUser["facebook"].toString(),
        insta: singleUser["insta"].toString(),
        blood: singleUser["blood"].toString(),
        other_pro: singleUser["other_pro"].toString(),
      );

      //Adding user to the list.
      users.add(user);
    }
    return users;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.pink.shade800,
          title: Text(
            "Ab_Test Display",
            style: GoogleFonts.prompt(fontSize: 22),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: FutureBuilder(
            future: getRequest(),
            builder: (BuildContext ctx, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(
                          color: Colors.red.shade900,
                          strokeWidth: 5,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "Data Loading Please Wait!",
                          style: TextStyle(),
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                return ListView.builder(
                    itemCount: snapshot.data.length,
                    itemBuilder: (ctx, index) =>
                        SingleChildScrollView(
                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.all(10),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 8),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey.shade100,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                height:
                                MediaQuery
                                    .of(context)
                                    .size
                                    .height / 1.8,
                                width: MediaQuery
                                    .of(context)
                                    .size
                                    .width / 1,
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [

                                      // Text(
                                      //   snapshot.data[index].id,
                                      //   style: GoogleFonts.lora(
                                      //       fontSize: 25,
                                      //       color: Colors.pink.shade700),
                                      // ),
                                      Text(
                                        snapshot.data[index].name,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].address,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].phone,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].mobile,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].watsap,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].email,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].website,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].facebook,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].insta,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].blood,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Text(
                                        snapshot.data[index].other_pro,
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 6,
                                        style: GoogleFonts.prompt(
                                            color: Colors.deepOrange.shade400,
                                            fontSize: 13),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                         // color: Colors.yellow,
                                          image: DecorationImage(
                                            image: NetworkImage(snapshot.data[index].image),
                                            fit: BoxFit.fill,
                                          ),

                                        ),
                                      ),



                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ));
              }
            },
          ),
        ),
      ),
    );
  }
}

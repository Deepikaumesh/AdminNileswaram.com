import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'About_Us.dart';
import 'Main_Registration/Main_Registration.dart';
import 'Registrations/Admin_Advertisement_Reg.dart';
import 'Registrations/Admin_News_Registration.dart';
import 'Registrations/Admin_event_Registration.dart';






class AdminDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          child: Padding(
            padding: EdgeInsets.only(top: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 60.0,
                  backgroundImage: AssetImage(
                    "assets/nileswram.png",
                  ),
                  // NetworkImage(
                  //   "https://images.unsplash.com/photo-1594616838951-c155f8d978a0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
                  // ),
                ),
                // SizedBox(
                //   height: 20.0,
                // ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "Nileswaram.com",
                    style: GoogleFonts.aclonica(
                      color: Colors.red.shade900,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 8.0,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 5.0,
        ),
        //Now let's Add the button for the Menu
        //and let's copy that and modify it

        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => About_Us()));
          },
          leading: Icon(
            Icons.menu,
            color: Colors.blueGrey.shade900,
          ),
          title: Text("About Us",
              style: GoogleFonts.prompt(
                fontSize: 15,
              )),
        ),
        // ListTile(
        //   onTap: () {
        //     Navigator.push(
        //         context, MaterialPageRoute(builder: (context) => AdminVersion()));
        //   },
        //   leading: Icon(
        //     Icons.mobile_friendly_outlined,
        //     color: Colors.blueGrey.shade900,
        //   ),
        //   title: Text(
        //     "Version",
        //     style: GoogleFonts.prompt(fontSize: 15),
        //   ),
        // ),

        ListTile(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Main_Registration_Page()));
          },
          leading: Icon(
            Icons.business,
            color: Colors.blueGrey.shade900,
          ),
          title: Text("Business/Shop Registration",
              style: GoogleFonts.prompt(fontSize: 15)),
        ),

        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Admin_News_Reg()));
          },
          leading: Icon(
            Icons.newspaper_rounded,
            color: Colors.blueGrey.shade900,
          ),
          title: Text("News Registration",
              style: GoogleFonts.prompt(fontSize: 15)),
        ),
        ListTile(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Admin_Event_Regt()));
          },
          leading: Icon(
            Icons.image,
            color: Colors.blueGrey.shade900,
          ),
          title: Text("Event Registration",
              style: GoogleFonts.prompt(fontSize: 15)),
        ),

        ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => Admin_Advertisemen_Regt()));
          },
          leading: Icon(
            Icons.web_asset_sharp,
            color: Colors.blueGrey.shade900,
          ),
          title: Text("Advertisement Registration",
              style: GoogleFonts.prompt(fontSize: 15)),
        ),




      ]),
    );
  }
}


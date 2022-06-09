import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Spacecraft{
  final String id;
  final String name, imageUrl, propellant;

  Spacecraft({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.propellant,
});

  factory Spacecraft.fromJson(Map<String, dynamic> json) => Spacecraft(
    id: json["id"],
    name: json["name"],
    propellant: json["propellant"],
    imageUrl: json["imageurl"],
  );

}

class CustomListview extends StatelessWidget {
//final List<Spacecraft> spacecrafts;
 List<Spacecraft> spacecrafts = [];

CustomListview(this.spacecrafts);




  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: spacecrafts.length,
        itemBuilder: (context,int currentIndex){
          return createViewItem(spacecrafts[currentIndex], context);

        },

    );
  }

  Widget createViewItem(Spacecraft spacecraft, BuildContext context) {
    return ListTile(
      title:  new Card(
        elevation: 5.0,
        child: new Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orange)),
          padding: EdgeInsets.all(20.0),
          margin: EdgeInsets.all(20.0),

          child: Column(
            children: [
              Padding(
                child: Image.network(spacecraft.imageUrl),
                padding: EdgeInsets.all(8.0),
              ),
              Row(
                children: [
                  Padding(
                    child:Text(
                      spacecraft.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0),
                  ),
                  Text(" | "),
                  Padding(
                    child:Text(
                      spacecraft.propellant,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,),
                      textAlign: TextAlign.right,
                    ),
                    padding: EdgeInsets.all(1.0),
                  ),

                ],
              )
            ],

          ),
        ),
        
      ),
      onTap: (){
   //  Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondScreen(value:,)));
      },
    );
  }
}

Future<List<Spacecraft>> downloadJSON() async {
  final url =
      "https://raw.githubusercontent.com/oclemy/SampleJSON/338d9585/spacecrafts.json";

  final response = await http.get(Uri.parse(url));

  if(response.statusCode == 200){
    List spacecrafts = json.decode(response.body);
    return spacecrafts
        .map((spacecraft) => new Spacecraft.fromJson(spacecraft))
        .toList();
  } else
    throw Exception(' not success');
}


class SecondScreen extends StatefulWidget {

  final Spacecraft value;
   const SecondScreen({Key? key,required this.value}) : super(key: key);

   @override
   _SecondScreenState createState() => _SecondScreenState();
 }

 class _SecondScreenState extends State<SecondScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(title: Text("detail"),),
       body: Container(
         child: Center(
           child:  Column(
             children: [
               Padding(
                 child: Text("SPacecraft details",
                 style: TextStyle(fontWeight: FontWeight.bold),
                 textAlign: TextAlign.center,),
                 padding: EdgeInsets.all(20.0),
               ),

               Padding(
                 child: Image.network('${widget.value.imageUrl}'),
                 padding: EdgeInsets.all(20.0),
               ),
               Padding(
                 child: Text(
                   "Name : ${widget.value.name}",
                   textAlign: TextAlign.left,
                 ),
                 padding: EdgeInsets.all(20),
               )
             ],
             
           ),
         ),
       ),
     );
   }
 }

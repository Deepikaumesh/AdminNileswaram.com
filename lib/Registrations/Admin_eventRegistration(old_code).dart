import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;


class Admin_EventReg extends StatefulWidget {
  @override
  _Admin_EventRegState createState() => _Admin_EventRegState();
}

class _Admin_EventRegState extends State<Admin_EventReg> {

  // File _image = File("");
  var _image;
//  final picker = ImagePicker();
  TextEditingController namecontroller = TextEditingController();

  Future choiceImage() async {
    var pickedImage = await ImagePicker().pickImage(
        source: ImageSource.gallery);
    final pickedImageFile = File (pickedImage!.path);




    setState(() {
     _image = File(pickedImage.path);


      //final pickedImageFile = File (pickedImage!.path);
    });
  }

      Future uploadImage() async{
    var uri =Uri.parse("https://jcizone19.in/._A_nileswaram/directoryapp/Nileswaram.com/Image/upload_image.php");
    var request = http.MultipartRequest('post',uri);
    request.fields['name']=namecontroller.text;
    var pic = await http.MultipartFile.fromBytes("image", _image.path);
    request.files.add(pic);
    var response = await request.send();

    if(response.statusCode == 200){
      print('image uploaded');
    }else{
      print("image not uploaded");
    }

      }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Image Picker Example"),
      ),
      body:
      Column(
        children: [
          TextField(
            controller: namecontroller,
            decoration: InputDecoration(labelText: "Name"),
          ),
          IconButton(onPressed: () {
            choiceImage();
          }, icon: Icon(Icons.camera)),
          Container(
            height: 100,
            width: 100,
            child: _image == null ? Text("No image selected"):Image.file(_image),
          ),
          RaisedButton(
              child: Text("Upload Image"),
              onPressed: (){
                uploadImage();


          })
        ],


      ),
    );
  }
}
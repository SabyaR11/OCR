import 'dart:io';

import 'package:flutter/material.dart';
import 'package:project1/home.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText2: TextStyle(
              fontSize: 12.0, color: Colors.black, fontWeight: FontWeight.bold),
          headline1: TextStyle(
              fontSize: 60.0, color: Colors.white, fontWeight: FontWeight.w900),
        ),
      ),
      home: Bkgd(),
    );
  }
}

class Bkgd extends StatelessWidget {
  
  File _image;

  Future getImage(){
    final image = ImagePick
  }
  
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      //code for application bar
      appBar: AppBar(
        backgroundColor: Colors.cyan.withOpacity(0.9),
        elevation: 10.0,
        title: Text('OCR Editor'),
      ),

      //main cpde for the body start here
      body: Center(
        child: Container(
          width: _size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 80,
              ),

              //code to show text to the user for chosing the file
              Container(
                child: Center(
                  child: Text(
                    "Select a folder or click a photo of the text",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),

              //code to add space between text and and dropdown box
              SizedBox(
                height: 60,
              ),

              //code for imported dropdown function
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 100),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(child: Dropdn())),
              ),

              //code for add space between dropdown and output field
              SizedBox(
                height: 30,
              ),

              //codde for the box to show output result
              Container(
                decoration: BoxDecoration(
                    color: Colors.white70,
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Colors.black54,
                      width: 5,
                    )),
                child: Center(
                  child: Text(
                    'xyz',
                    style: TextStyle(fontSize: 14, color: Colors.deepOrange),
                  ), //Output of the scanned image to be shown here
                ),
                height: 300,
                width: 300,
              ),

              //code for adding space between output box and camera button
              SizedBox(
                height: 30,
              ),

              //code for the camera button
              IconButton(
                iconSize: 60,
                onPressed: () {},
                icon: Icon(Icons.camera_alt),
              ),
            ],
          ),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.lightBlueAccent.shade400,
              Colors.cyanAccent.shade200,
            ],
          )),
        ),
      ),
    );
  }
}

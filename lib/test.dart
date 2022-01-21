import 'package:flutter/material.dart';
import 'package:project1/home.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("OCR Editor"),
          centerTitle: true,
        ),
        body: AppBody(),
      ),
    ));

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                Colors.lightBlueAccent.shade700,
                Colors.cyanAccent.shade700,
              ])),
        ),
      ),
    );
  }
}

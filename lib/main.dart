import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;
    return const MaterialApp(home: homeApp());
  }
}

class homeApp extends StatelessWidget {
  const homeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("UI TASK"),

      ),
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: h * 0.3,
          child: const Image(
            fit: BoxFit.fitHeight,
            alignment: Alignment.center,
            image: AssetImage('assets/image_001.jpg'),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              width: w * 0.45,
              child: const Image(
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                image: AssetImage('assets/image_001.jpg'),
              ),
            ),
            Container(
              width: w * 0.45,
              child: const Image(
                fit: BoxFit.fitHeight,
                alignment: Alignment.center,
                image: AssetImage('assets/image_001.jpg'),
              ),
            ),
          ],
        ),
        Container(
          height: h * 0.3,
          child: const Image(
            fit: BoxFit.fitHeight,
            alignment: Alignment.center,
            image: AssetImage('assets/image_001.jpg'),
          ),
        ),
      ],
    )));
  }
}

import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

int randRange(int lowerBoundary, int upperBoundary){
  Random rnd = new Random();
  return lowerBoundary+rnd.nextInt(upperBoundary-lowerBoundary);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Colour App',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _primaryCol = Color.fromRGBO(randRange(0, 255), randRange(0, 255), randRange(0, 255), 1.0);

  void _changeColor(){
    setState((){
      _primaryCol = Color.fromRGBO(randRange(0, 255), randRange(0, 255), randRange(0, 255), 1.0);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: GestureDetector(
      child: new Container(
        child: Align(
          child:Text("Hey there!"),
          alignment:Alignment.center,
        ),
        width: double.infinity,
        height: double.infinity ,
        color:_primaryCol,
      ),
       onTap: ()=>setState(()=>_changeColor()),
     ),


    );
  }
}

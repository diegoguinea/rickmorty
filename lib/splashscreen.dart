import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rickmorty/home.dart';

class SplashScreen extends StatefulWidget{
  static const String routeName = '/splash';

  @override
  _SplshScr createState() => _SplshScr();
}

class _SplshScr extends State<SplashScreen>{
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),()=>Navigator.push(context,MaterialPageRoute(builder:(BuildContext context){
      return ApiPage();
    }))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black54,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            child : Image.asset('images/Rick.png'),
          ),
          Container(
            height: 400,
            width: 400,
            child : Image.asset('images/rick.jpg'),
          ),
        ],),
    );
  }
}
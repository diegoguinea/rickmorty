import 'package:flutter/material.dart';
import 'package:rickmorty/home.dart';
import 'package:rickmorty/routes.dart';
import 'package:rickmorty/splashscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
        home: SplashScreen(),
        routes: <String, WidgetBuilder>{
          Routes.home: (BuildContext context) => new ApiPage(),
        }
    );
  }
}




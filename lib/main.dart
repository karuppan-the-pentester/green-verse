import 'package:flutter/material.dart';
import 'package:greenverse/screens/Splash_Screen.dart';
import 'package:introduction_slider/introduction_slider.dart';


void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData.light(useMaterial3: true),
      home: Splash_Screen(),
    );
  }
}

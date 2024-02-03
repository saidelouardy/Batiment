import 'package:flutter/material.dart';
import 'package:batimente/Firstpage/firstpage.dart';

void main() {
  runApp(const Batiment());
}

class Batiment extends StatelessWidget {
  const Batiment({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
// desing text style
      theme: ThemeData(
          textTheme: const TextTheme(
        titleLarge: TextStyle(
            fontFamily: "Fontone",
            color: Colors.white,
            fontSize: 60,
            fontWeight: FontWeight.bold),
        labelMedium: TextStyle(
            fontFamily: "Fontthree",
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold),
        labelSmall: TextStyle(
          fontFamily: "Fonttow",
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        labelLarge: TextStyle(
          fontFamily: "Fonttow",
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      )),

//finsh
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

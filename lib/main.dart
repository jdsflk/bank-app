import 'package:bank_app/pages/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryTextTheme: TextTheme(
          bodyText1: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.normal,
            fontSize: 18
          )
        )
      ),
      home: HomePage(),
    );
  }
}
import 'package:assignment_app/demo.dart';
import 'package:assignment_app/home_page.dart';
import 'package:assignment_app/l10p2.dart';
import 'package:assignment_app/login.dart';
import 'package:flutter/material.dart';
import 'l10p1.dart';
import 'login_page.dart';
import 'dart:async';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: new ThemeData(scaffoldBackgroundColor: Color.fromARGB(223, 255, 254, 254)),
      // theme: ThemeData(
      //   primarySwatch: Colors.green,
      // ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {  
    return Container(
        color: Colors.white,
        child: Image.network('https://img.freepik.com/premium-vector/sushi-logo-template-designseafood-traditional-japanese-cuisine-with-salmon-delicious-foodlogo-japanese-restaurant-bar-sushi-shop_607588-9856.jpg?w=740'));
  }
}

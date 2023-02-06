import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        body: Container(
          child: Column(
            children: <Widget>[
              Expanded(
                  child: Container(
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/pngtree-old-ambiguous-effect-yellow-zebra-crossing-background-image_680984.jpg',
                      fit: BoxFit.cover,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Row(
                          children: [
                            Expanded(
                                child: Column(
                              children: [
                                Expanded(
                                  child: Container(
                                      child: Text(
                                        "NEW \nARRIVALS",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                      margin: EdgeInsets.only(left:5,top: 50)),
                                ),
                                Expanded(
                                  child: Container(
                                      child: Text(
                                        "25% DISCOUNT",
                                        style: TextStyle(
                                            fontFamily: "Roboto",
                                            color: Colors.yellow,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 15),
                                      ),
                                      ),
                                ),
                                Expanded(
                                  child: Center(
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        border: Border.all(width: 2, color: Colors.black),
                                        borderRadius: BorderRadius.all(Radius.circular(50)),
                                      ),
                                      child: Center(
                                        child: Text("BUY NOW", style: TextStyle(fontSize: 24, color: Colors.green)),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ))
                          ],
                        )),
                        Expanded(
                            child: Container(
                          child: Image.asset(
                              'assets/images/WhatsApp Image 2023-02-01 at 17.27.19.jpg',),
                          margin: EdgeInsets.only(right: 10),
                        ))
                      ],
                    )
                  ],
                ),
              )),
              Expanded(
                  child: Container(
                color: Colors.white,
              )),
              Expanded(
                  child: Container(
                color: Colors.green,
              ))
            ],
          ),
        ),
      )),
    );
  }
}
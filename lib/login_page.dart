import 'package:assignment_app/home_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Expanded(
              flex: 15,
              child: Stack(
                children: [
                  Container(
                    child: Image.asset('assets/photos/abc.avif',
                        fit: BoxFit.cover,
                        height: double.infinity,
                        width: double.infinity,
                        color: Color.fromRGBO(255, 255, 255, 0.8),
                        colorBlendMode: BlendMode.modulate),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(160, 800, 00, 0),
                    child: ElevatedButton(
                      onPressed: (() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomePage()));
                      }),
                      child: Text('Continue'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.lightGreen,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}

import 'package:assignment_app/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class L10P1 extends StatefulWidget {
  const L10P1({super.key});

  @override
  State<L10P1> createState() => _L10P1State();
}

class _L10P1State extends State<L10P1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('TabBar'),
            bottom: TabBar(
              tabs: [
                Tab(
                  child: InkWell(
                    onTap: (() {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    }),
                    child: Column(children: [
                      Icon(Icons.home_filled),
                      Text('Home')
                      // Icon: Icon(Icons.home_filled),
                      // text: "Home",
                    ]),
                  ),
                ),
                Tab(
                  icon: Icon(Icons.account_box_outlined),
                  text: "Account",
                ),
                Tab(
                  icon: Icon(Icons.alarm),
                  text: "Alarm",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Icon(Icons.home),
              ),
              Center(
                child: Icon(Icons.account_circle),
              ),
              Center(
                child: Icon(Icons.alarm),
              )
            ],
          ),
        ),
      ),
    );
  }
}

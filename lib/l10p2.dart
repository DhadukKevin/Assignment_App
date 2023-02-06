import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class L10P2 extends StatefulWidget {
  const L10P2({super.key});

  @override
  State<L10P2> createState() => _L10P2State();
}

int? i;

class _L10P2State extends State<L10P2> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: Container(
          child: Text('Page ${i}'),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: InkWell(
                child: Text('Page 1'),
                onTap: () {
                  setState(() {
                    i = 1;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              title: InkWell(
                child: Text('Page 2'),
                onTap: () {
                  setState(() {
                    i = 2;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              title: InkWell(
                child: Text('Page 3'),
                onTap: () {
                  setState(() {
                    i = 3;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
            ListTile(
              title: InkWell(
                child: Text('Page 4'),
                onTap: () {
                  setState(() {
                    i = 4;
                  });
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text('Drawer'),
      ),
    ));
  }
}
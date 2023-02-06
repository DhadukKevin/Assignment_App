import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Demo extends StatefulWidget{
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 300,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
                itemCount: title.length,
                itemBuilder: ((context, index) {
                  return getCard(title[index],ingi[index],price[index],image[index], context);
                }
              )
              ),
        )
      )
    );
  }
  List<String> title=['Sushi Octopus','Sushi Selmon'];
  List<String> ingi=['Rice + Octopus','Rice + Selmon'];
  List<int> price=[20,25];
  List<String> image=['assets/photos/1.webp','assets/photos/2.jpeg'];
  // List<Map> users = [];

  // void initUser() {
  //   Map<String, dynamic> map = {};
  //   map['Title'] = 'Sushi Octopus';
  //   map['Ingi'] = 'Rice + Octopus';
  //   map['Price'] = 20;
  //   map['Image'] = 'aseets/photos/1.webp';
  //   users.add(map);

  //   // Map<String, dynamic> map = {};
  //   map={};
  //   map['Title'] = 'Sushi Salmon';
  //   map['Ingi'] = 'Rice + Salmon';
  //   map['Price'] = 20;
  //   map['Image'] = 'aseets/photos/2.jpeg';
  //   users.add(map);
  // }

  Widget getCard(String Title,String Ingri,int Price,String Img, BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      height: 300,
      width: 200,
      child: Card(
          color: Color.fromARGB(255, 4, 32, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            //set border radius more than 50% of height and width to make circle
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Image.asset(
                    Img,
                    fit: BoxFit.fill,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                ),
                flex: 2,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 30, 0),
                        child: Text(
                          Title,
                          style: TextStyle(
                              color: Color.fromARGB(255, 223, 223, 223),
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                          textAlign: TextAlign.left,
                        )),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 0, 55, 0),
                      child: Text(
                        Ingri,
                        style: TextStyle(
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(255, 177, 176, 176)),
                      ),
                    ),
                    Container(
                      child: Row(children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Text(
                              '₹${Price}',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 223, 223, 223)),
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.fromLTRB(0, 3, 5, 0),
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 122, 120, 120)),
                          child: TextButton(
                            onPressed: () {
                              // setState(() {
                              //   i = Img;
                              //   p = Price;
                              // });
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => MainPage(
                              //               p: p,
                              //               i: i,
                              //             )));`
                            },
                            child: Text(
                              'Order',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 227, 227, 227)),
                            ),
                          ),
                        ))
                      ]),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
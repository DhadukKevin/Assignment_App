import 'package:assignment_app/main_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

var height, width;
int p = 0;
var i = "";
var t = "";
var c = "";
List<String> title = ['Sushi Octopus', 'Sushi Selmon', 'Sushi Caviar'];
List<String> ingi = ['Rice + Octopus', 'Rice + Selmon', 'Rice + Caviar'];
List<int> price = [20, 25, 30];
List<String> image = [
  'assets/photos/10.png',
  'assets/photos/11.png',
  'assets/photos/12.png'
];
List<String> image1 = [
  'assets/photos/salmon1.png',
  'assets/photos/caviar1png.png',
  'assets/photos/rice1.png',
  'assets/photos/oct.png',
  'assets/photos/shm.png'
];
List<String> name = ['Salmon', 'Caviar', 'Rice', 'Octopus', 'Shrimp'];
List<String> Category = [
  'Octopus Categoy',
  'Salmon Categoy',
  'Caviar Category'
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

    return SafeArea(
        child: Scaffold(
      key: _globalKey,
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Text(
                'List 1',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Text(
                'List 2',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(30, 30, 30, 0),
              child: Text(
                'List 3',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                // color: Colors.red,
                margin: EdgeInsets.fromLTRB(10, 7, 0, 0),
                child: RawMaterialButton(
                  onPressed: () {
                    _globalKey.currentState?.openDrawer();
                  },
                  elevation: 2.0,
                  fillColor: Colors.white,
                  child: Icon(
                    Icons.menu,
                    size: 25.0,
                  ),
                  padding: EdgeInsets.all(15.0),
                  shape: CircleBorder(),
                ),
              ),
            ],
          ),
          Container(
              // color: Colors.green,
              margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
              // padding: EdgeInsets.only(left: 30),
              child: Row(
                children: [
                  // Icon(Icons.waving_hand_outlined),
                  Image.asset('assets/photos/hand.png', scale: 25),
                  Text(
                    ' Hii, Kevin!!',
                    style: TextStyle(fontSize: 20, fontFamily: 'Lato'),
                  ),
                ],
              )),
          Container(
              margin: EdgeInsets.fromLTRB(30, 20, 0, 0),
              child: Text(
                'What is your\nfavorite sushi?',
                style: TextStyle(fontSize: 25, fontFamily: 'Lato'),
              )),
          Container(
            margin: EdgeInsets.fromLTRB(25, 30, 25, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                padding: EdgeInsets.all(5),
                  child: TextFormField(
                decoration : InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search your sushi',
                  prefixIcon: Icon(Icons.search)
                ),
              )),
            ),
          ),

          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(30, 40, 0, 20),
                  child: Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                flex: 6,
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.fromLTRB(0, 50, 10, 20),
                child: Text(
                  'See all',
                  style: TextStyle(fontSize: 12),
                ),
              )),
            ],
          ),
          Container(
            height: 90,
            width: width,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: image1.length,
                itemBuilder: ((context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                        child: RawMaterialButton(
                          onPressed: () {},
                          elevation: 2.0,
                          fillColor: Colors.white,
                          child: Image.asset(
                            image1[index],
                            scale: 20,
                          ),
                          padding: EdgeInsets.all(15.0),
                          shape: CircleBorder(),
                        ),
                      ),
                      Text(
                        name[index],
                        style: TextStyle(fontSize: 13),
                      )
                    ],
                  );
                })),
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(30, 30, 0, 20),
                  child: Text(
                    'Top Sushi',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                flex: 6,
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.fromLTRB(0, 40, 0, 20),
                child: Text(
                  'See all',
                  style: TextStyle(fontSize: 12),
                ),
              )),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(5, 0, 5, 0),
            height: 330,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: title.length,
                itemBuilder: ((context, index) {
                  if (index % 2 == 0) {
                    return getCard(title[index], ingi[index], price[index],
                        image[index], Category[index], context);
                  } else {
                    return getCard1(title[index], ingi[index], price[index],
                        image[index], Category[index], context);
                  }
                })),
          ),
        ],
      ),
    ));
  }

  // List<Map> users = [];

  // void initUser() {
  //   Map<String, dynamic> map = {};
  //   map['Title'] = 'Sushi Octopus';
  //   map['Ingi'] = 'Rice + Octopus';
  //   map['Price'] = 20;
  //   map['Image'] = 'aseets/photos/1.webp';
  //   users.add(map);

  //   // Map<String, dynamic> map = {};
  //   map = {};
  //   map['Title'] = 'Sushi Salmon';
  //   map['Ingi'] = 'Rice + Salmon';
  //   map['Price'] = 20;
  //   map['Image'] = 'aseets/photos/2.jpeg';
  //   users.add(map);
  // }

  Widget getCard(String Title, String Ingri, int Price, String Img, String cat,
      BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
      height: 300,
      width: 200,
      child: Card(
          color: Color.fromARGB(255, 4, 32, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
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
                        margin: EdgeInsets.fromLTRB(0, 5, 60, 0),
                        child: Text(
                          Title,
                          style: TextStyle(
                              color: Color.fromARGB(255, 223, 223, 223),
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                          textAlign: TextAlign.left,
                        )),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 5, 95, 0),
                      child: Text(
                        Ingri,
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(255, 177, 176, 176)),
                      ),
                    ),
                    Container(
                      child: Row(children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(bottom: 9),
                                  child: Text(
                                    '\$ ',
                                    textScaleFactor: 0.7,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 223, 223, 223)),
                                  ),
                                ),
                                Text(
                                  '$Price',
                                  style: TextStyle(
                                      fontSize: 20,
                                      color:
                                          Color.fromARGB(255, 223, 223, 223)),
                                ),
                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text(
                                    '.00',
                                    textScaleFactor: 0.7,
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:
                                            Color.fromARGB(255, 223, 223, 223)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                            child: Container(
                          margin: EdgeInsets.fromLTRB(0, 3, 5, 0),
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(40),
                              color: Color.fromARGB(255, 122, 120, 120)),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                i = Img;
                                p = Price;
                                t = Title;
                                c = cat;
                              });
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MainPage(
                                            p: p,
                                            i: i,
                                            t: t,
                                            c: c,
                                          )));
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

  Widget getCard1(String Title, String Ingri, int Price, String Img, String cat,
      BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.fromLTRB(7, 0, 0, 0),
        height: 300,
        width: 200,
        child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
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
                          margin: EdgeInsets.fromLTRB(0, 5, 60, 0),
                          child: Text(
                            Title,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                            textAlign: TextAlign.left,
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 5, 95, 0),
                        child: Text(
                          Ingri,
                          style: TextStyle(
                              fontWeight: FontWeight.w200, fontSize: 10),
                        ),
                      ),
                      Container(
                        child: Row(children: [
                          Expanded(
                            child: Container(
                              margin: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Row(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(bottom: 9),
                                    child: Text(
                                      '\$ ',
                                      textScaleFactor: 0.7,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                  Text(
                                    '$Price',
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      '.00',
                                      textScaleFactor: 0.7,
                                      style: TextStyle(fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                              child: Container(
                            margin: EdgeInsets.fromLTRB(0, 3, 5, 0),
                            decoration: BoxDecoration(
                                // border: Border.all(),
                                borderRadius: BorderRadius.circular(40),
                                color: Color.fromARGB(255, 4, 32, 55)),
                            child: TextButton(
                              onPressed: () {
                                setState(() {
                                  i = Img;
                                  p = Price;
                                  t = Title;
                                  c = cat;
                                });
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MainPage(
                                              p: p,
                                              i: i,
                                              t: t,
                                              c: c,
                                            )));
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
      ),
    );
  }
}

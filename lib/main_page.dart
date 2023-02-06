import 'package:assignment_app/home_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key,required p,required i,required t,required c});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int price = 0;
  int flag=1;
  var image="heart.png";
  Color clr = Colors.white;
  Color clr1 = Colors.black;
  Color clr2 = Colors.white;
  Color clr3 = Colors.black;
  Color clr4 = Colors.white;
  Color clr5 = Colors.black;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(0, 30, 100, 0),
                  child: RawMaterialButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 25.0,
                    ),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.fromLTRB(100, 30, 0, 0),
                  child: RawMaterialButton(
                    onPressed: () {
                      setState(() {
                        if(flag==1){
                          flag=0;
                        }
                        else{
                          flag=1;
                        }
                        if(flag==1){
                          image="heart.png";
                        }
                        else{
                          image="heart1.png";
                        }
                      });
                      
                    },
                    elevation: 2.0,
                    fillColor: Colors.white,
                    child: Image.asset('assets/photos/${image}',height: 30,width: 30,),
                    padding: EdgeInsets.all(15.0),
                    shape: CircleBorder(),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Center(
              child: Text(
                t,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
            child: Center(
              child: Text(
                c,
                style: TextStyle(fontSize: 10),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Icon(Icons.star),
                ),
                Container(
                  child: Icon(Icons.star),
                ),
                Container(
                  child: Icon(Icons.star),
                ),
                Container(
                  child: Icon(Icons.star),
                ),
                Container(
                  child: Icon(Icons.star_border),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(30, 20, 30, 0),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: Image.asset('assets/photos/salmon1.png'),
                        ),
                      ),
                      Text('Salmon'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.only(bottom: 15),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: Image.asset('assets/photos/caviar1png.png'),
                        ),
                      ),
                      Text('Caviar'),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: Container(
                          padding: EdgeInsets.all(10),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.white),
                          child: Image.asset('assets/photos/rice1.png'),
                        ),
                      ),
                      Text('Rice'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Card(
                  child: Image.asset(
                    '${i}',
                    fit: BoxFit.cover,
                    height: 250,
                    width: 250,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20),
                child: Text('Choose your quantity :'),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      price = 6 * p;
                      clr=Color.fromARGB(255, 4, 32, 55);
                      clr1= Color.fromARGB(255, 213, 214, 214);
                      clr2=Colors.white;
                      clr3=Colors.black;
                      clr4=Colors.white;
                      clr5=Colors.black;
                    });
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(40),
                          // color: Color.fromARGB(255, 4, 32, 55)
                          color: clr
                          ),
                      child: Text(
                        '6 Units',
                        style: TextStyle(color: clr1),
                      )),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      price = 12 * p;
                      clr2=Color.fromARGB(255, 4, 32, 55);
                      clr3= Color.fromARGB(255, 213, 214, 214);
                      clr4=Colors.white;
                      clr5=Colors.black;
                      clr=Colors.white;
                      clr1=Colors.black;
                    });
                  },
                  child: Container(
                    
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: clr2),
                      child: Text(
                        '12 Units',
                        style: TextStyle(color: clr3),
                      )),
                ),
              ),
              Expanded(
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      price = 24 * p;
                      clr4=Color.fromARGB(255, 4, 32, 55);
                      clr5= Color.fromARGB(255, 213, 214, 214);
                      clr2=Colors.white;
                      clr3=Colors.black;
                      clr=Colors.white;
                      clr1=Colors.black;
                    });
                  },
                  child: Container(
                      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          // border: Border.all(),
                          borderRadius: BorderRadius.circular(40),
                          color: clr4),
                      child: Text(
                        '24 Units',
                        style: TextStyle(color: clr5),
                      )),
                ),
              ),
              
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(25, 15, 25, 0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Container(
                padding: EdgeInsets.all(20),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Expanded(
                      child: Column(
                    children: [
                      Text(
                        '₹${price}',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Total Price',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  )),
                  Expanded(
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            title: const Text("Order Status"),
                            content: const Text(
                                "Your Order has been successfully placed"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  color: Colors.grey,
                                  padding: const EdgeInsets.all(14),
                                  child: const Text("okay",style: TextStyle(color: Colors.black),),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      child: Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
                          padding: EdgeInsets.all(15),
                          decoration: BoxDecoration(
                              // border: Border.all(),
                              borderRadius: BorderRadius.circular(20),
                              color: Color.fromARGB(255, 4, 32, 55)),
                          child: Text(
                            'Place Order',
                            style: TextStyle(color: Color.fromARGB(255, 223, 223, 223)),
                          )),
                    ),
                  ),
                ]),
              ),
            ),
          )
        ],
      ),
    ));
  }
}

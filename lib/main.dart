import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      body: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35.0),
            child: Image.asset('assets/car.jpg',
                width: 500, height: 550, fit: BoxFit.cover),
          ),
          Container(
              padding: EdgeInsets.only(top: 22, left: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                //Each one start in leading position

                children: [
                  Text(
                    "KEEP IN TOUCH",
                    style: TextStyle(
                      fontSize: 43,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "WITH YOUR CAR",
                    style: TextStyle(
                      fontSize: 43,
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Row(
                    children: [
                      OutlinedButton(
                          style: ButtonStyle(
                              side: MaterialStateProperty.all(BorderSide(
                                  color: Color.fromARGB(255, 67, 67, 67),
                                  width: 1.0,
                                  style: BorderStyle.solid))),
                          onPressed: () {},
                          child: const Padding(
                            padding: EdgeInsets.only(
                                left: 8, right: 8, top: 20, bottom: 20),
                            child: Text("Back",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 67, 67, 67),
                                    fontSize: 20)),
                          )),
                      Container(
                        margin: EdgeInsets.only(left: 12),
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor:
                                    Color.fromRGBO(175, 200, 60, 1)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          SecondApp()));
                            },
                            child: Padding(
                              padding: EdgeInsets.only(
                                  left: 30, right: 30, top: 21, bottom: 23),
                              child: Text("Start explore",
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 67, 67, 67),
                                      fontSize: 20)),
                            )),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Color.fromARGB(66, 87, 85, 85),
          title: Text("Car Details"),
          actions: [
            const Padding(
              padding: EdgeInsets.only(right: 25),
              child: Icon(
                Icons.shopping_cart,
                size: 26.0,
              ),
            ),
          ],
          toolbarHeight: 90,
        ),
        body: Stack(children: [
          Image.asset(
            'assets/U1.png',
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 1, 1, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    Container(
                      child: Icon(Icons.back_hand_rounded),
                    ),
                    Text(
                      "PONTIAC TEMPEST",
                      style: TextStyle(
                        fontSize: 33,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Text(
                        " GTO had poor aerodynamics, poor handling.drum brakes without booster in the basic configuration",
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 160, 159, 159),
                        ),
                      ),
                    ),
                    Text(
                      "SPECIFICATION",
                      style: TextStyle(
                        fontSize: 33,
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(12.0),
                          // padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(255, 65, 66, 65)),

                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 45, top: 12),
                                height: 30,
                                width: 30,
                                color: Color.fromRGBO(175, 200, 60, 1),
                                child: Icon(Icons.av_timer_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 4, top: 5, right: 5),
                                child: Text(
                                  "MAX SPEED",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 160, 159, 159),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 12, bottom: 4),
                                      child: Text(
                                        "230",
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          left: 5, top: 2, bottom: 4),
                                      child: Text(
                                        "KPH",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        //1st
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(12.0),
                          // padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(255, 65, 66, 65)),

                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 45, top: 12),
                                height: 30,
                                width: 30,
                                color: Color.fromRGBO(175, 200, 60, 1),
                                child: Icon(Icons.av_timer_outlined),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                    bottom: 4, top: 5, right: 20),
                                child: Text(
                                  "0-100kph",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 160, 159, 159),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 14),
                                      child: Text(
                                        "4.1",
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3, top: 5),
                                      child: Text(
                                        "S",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          ////
                        ),

                        //2nd
                        Container(
                          height: 100,
                          width: 100,
                          margin: EdgeInsets.all(12.0),
                          // padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Color.fromARGB(255, 65, 66, 65)),

                          child: Column(
                            children: [
                              Container(
                                margin: EdgeInsets.only(right: 45, top: 12),
                                height: 30,
                                width: 30,
                                color: Color.fromRGBO(175, 200, 60, 1),
                                child: Icon(Icons.timer),
                              ),
                              Padding(
                                padding: EdgeInsets.only(bottom: 4, top: 5),
                                child: Text(
                                  "MAX POWER",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Color.fromARGB(255, 160, 159, 159),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(left: 12, bottom: 4),
                                      child: Text(
                                        "764",
                                        style: TextStyle(
                                          fontSize: 23,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5),
                                      child: Text(
                                        "PS",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(175, 200, 60, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          )),
                      child: Row(children: [
                        Padding(
                          padding: EdgeInsets.only(left: 28, bottom: 120),
                          child: Text(
                            "Price",
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromARGB(255, 10, 10, 10),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 170, bottom: 120),
                          child: Text(
                            "875000\$",
                            style: TextStyle(
                              fontSize: 30,
                              color: Color.fromARGB(255, 10, 10, 10),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ]),
                    ),
                  ],
                ),
              )),
          Positioned(
            bottom: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 140,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 0, 0, 0),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
            ),
          ),
          Positioned(
            bottom: 36,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  color: Color.fromRGBO(175, 200, 60, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(175, 200, 60, 1)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 0, right: 20, top: 15, bottom: 18),
                    child: Text("BUY",
                        style: TextStyle(
                            color: Color.fromARGB(255, 6, 6, 6), fontSize: 30)),
                  )),
            ),
          ),
        ]));
  }
}

import 'package:flutter/material.dart';
import 'package:carcity/pages/pages.dart';



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

import 'package:carcity/pages/second_page/second_page_components/second_page_componenrs.dart';
import 'package:flutter/material.dart';
import 'package:carcity/pages/pages.dart';
import 'package:carcity/styles/styles.dart';

class SecondApp extends StatelessWidget {
  const SecondApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.primaryColor,
        appBar: AppBar(
          backgroundColor: AppColor.primaryColor,
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
                  color: AppColor.primaryColor,
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
                      style: HeaderFonts.primaryText,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 50, right: 50),
                      child: Text(
                        " GTO had poor aerodynamics, poor handling.drum brakes without booster in the basic configuration",
                        style: TextStyle(
                          fontSize: 10,
                          color: TextColor.teritaryColor,
                        ),
                      ),
                    ),
                    Text("SPECIFICATION", style: HeaderFonts.primaryText),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SmallBox(tex1: "MAX SPEED", tex2: "230", tex3: "KPH"),
                        SmallBox(tex1: "0-100kph", tex2: "4.1", tex3: "S"),
                        SmallBox(tex1: "MAX POWER", tex2: "764", tex3: "PS"),
                      ],
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height / 5,
                      decoration: BoxDecoration(
                          color: AppColor.teritaryColor,
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
                              color: TextColor.primaryColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 170, bottom: 120),
                          child: Text(
                            "875000\$",
                            style: TextStyle(
                              fontSize: 30,
                              color: TextColor.primaryColor,
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
                  color: AppColor.primaryColor,
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
                  color: AppColor.teritaryColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  )),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      backgroundColor: AppColor.teritaryColor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: 0, right: 20, top: 15, bottom: 18),
                    child: Text("BUY",
                        style: TextStyle(
                            color: TextColor.primaryColor, fontSize: 30)),
                  )),
            ),
          ),
        ]));
  }
}

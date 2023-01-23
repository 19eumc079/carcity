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
                  borderRadius: BoxBorders.primaryBoxBorders,
                ),
                child: Column(
                  children: [
                    Icon(Icons.back_hand_rounded),
                    Text(
                      "PONTIAC TEMPEST",
                      style: HeaderFonts.primaryText,
                    ),
                    Container(
                      constraints: BoxConstraints(
                          maxWidth: MediaQuery.of(context).size.width / 1.2),
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
                          borderRadius: BoxBorders.primaryBoxBorders),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Price",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: TextColor.primaryColor,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topRight,
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
              height: MediaQuery.of(context).size.height / 6,
              decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BoxBorders.primaryBoxBorders),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 60, vertical: 30),
                decoration: BoxDecoration(
                    color: AppColor.teritaryColor,
                    borderRadius: BoxBorders.secondaryBoxBorders),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        backgroundColor: AppColor.teritaryColor),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text("BUY",
                        style: TextStyle(
                            color: TextColor.primaryColor, fontSize: 30))),
              ),
            ),
          ),
        ]));
  }
}

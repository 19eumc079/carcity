import 'package:carcity/model/details_model/details_model.dart';
import 'package:flutter/material.dart';
import 'package:carcity/styles/styles.dart';

class SmallBox extends StatelessWidget {
  List<Spec> name = [
    Spec(
        name1: "Max SPEED",
        name2: "230",
        name3: "KPH",
        icon1: Icon(Icons.timer)),
    Spec(
        name1: "0-100kph",
        name2: "4.1",
        name3: "S",
        icon1: Icon(Icons.speed_rounded)),
    Spec(
        name1: "MAX POWER",
        name2: "764",
        name3: "PS",
        icon1: Icon(Icons.power_input_rounded))
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: name.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              width: 100,
              margin: EdgeInsets.all(12.0),
              // padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: TextColor.teritaryColor),

              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 45, top: 12),
                    height: 30,
                    width: 30,
                    color: AppColor.teritaryColor,
                    child: name[index].icon1,
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 4, top: 5),
                    child: Text(
                      name[index].name1,
                      style: TextStyle(
                        fontSize: 13,
                        color: TextColor.secondaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 12, bottom: 4),
                        child: Text(
                          name[index].name2,
                          style: TextStyle(
                            fontSize: 23,
                            color: TextColor.secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          name[index].name3,
                          style: TextStyle(
                            fontSize: 12,
                            color: TextColor.secondaryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            );
          }),
    );
  }
}

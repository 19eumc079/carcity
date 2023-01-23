import 'package:carcity/pages/first_page/first_page_components/first_page_components.dart';
import 'package:flutter/material.dart';
import 'package:carcity/pages/pages.dart';
import 'package:carcity/styles/styles.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35.0),
            child: Image.asset('assets/car.jpg',
                width: 500, height: 550, fit: BoxFit.cover),
          ),
          CommonContainer(text: "KEEP IN TOUCH \nWITH YOUR CAR"),
          // CommonContainer(text: "WITH YOUR CAR"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  // OutlinedButton(
                  //     style: ButtonStyle(
                  //         side: MaterialStateProperty.all(BorderSide(
                  //             color: TextColor.teritaryColor,
                  //             width: 1.0,
                  //             style: BorderStyle.solid))),
                  //     onPressed: () {},
                  //     child: const Padding(
                  //       padding: EdgeInsets.only(
                  //           left: 8, right: 8, top: 20, bottom: 20),
                  //       child: Button(text:"Back",color:TextColor.teritaryColor),
                  //     )),

                  Button(
                      text: "Back",
                      color: AppColor.primaryColor,
                      color1: TextColor.teritaryColor),

                  Container(
                    margin: EdgeInsets.only(left: 12),
                    child: Button(
                        text: "Start Explore",
                        color: AppColor.teritaryColor,
                        color1: TextColor.primaryColor),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

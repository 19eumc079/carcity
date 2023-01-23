import 'package:flutter/material.dart';
import 'package:carcity/styles/styles.dart';

class SmallBox extends StatelessWidget {
  const SmallBox({required this.tex1, required this.tex2, required this.tex3});
  final String tex1;
  final String tex2;
  final String tex3;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            color: AppColor.teritaryColor,
            child: Icon(Icons.timer),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 4, top: 5),
            child: Text(
              tex1,
              style: TextStyle(
                fontSize: 13,
                color: TextColor.secondaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 12, bottom: 4),
                  child: Text(
                    tex2,
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
                    tex3,
                    style: TextStyle(
                      fontSize: 12,
                      color: TextColor.secondaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

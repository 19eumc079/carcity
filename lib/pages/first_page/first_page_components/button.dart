import 'package:flutter/material.dart';
import 'package:carcity/styles/styles.dart';
import 'package:carcity/pages/pages.dart';

class  Button extends StatelessWidget {
  const  Button({ required this.text ,required this.color ,required this.color1});
  final String text;
    final Color color;
    final Color color1;

  @override
  Widget build(BuildContext context) {
    return  OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                backgroundColor:  color),
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
                              child: Text( text,
                                  style: TextStyle(
                                      color:  color1,
                                      fontSize: 20)),
                            ));
  }
}
import 'package:flutter/material.dart';
import 'package:carcity/styles/styles.dart';

class CommonContainer extends StatelessWidget {
  const CommonContainer({required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: HeaderFonts.secontaryText,
    );
  }
}

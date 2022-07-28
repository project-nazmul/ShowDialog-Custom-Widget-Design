import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  const CustomText({Key? key,required this.text,required this.clr,required this.fs,required this.fw}) : super(key: key);
  final String text;
  final Color clr;
  final double fs;
  final FontWeight fw;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontWeight: fw,
      fontSize: fs,
      color: clr,

    ), );
  }
}

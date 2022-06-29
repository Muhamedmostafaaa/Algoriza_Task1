import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../onboarding_page/textdesign.dart';

class Elvatedbutton_design extends StatelessWidget{
  String? text;
  double? height;
  double? size;
  Color? color;
  bool isbold;
  Color? textcolor;
  VoidCallback? onclick;
  Elvatedbutton_design({required this.isbold,this.size,this.color,this.text,this.height,this.textcolor, this.onclick});
  @override
  Widget build(BuildContext context) {
  return Container(
      margin: EdgeInsets.symmetric(horizontal: 18.w),
      height: height,
      decoration:
      BoxDecoration(borderRadius: BorderRadius.circular(70)),
      child: ElevatedButton(
          onPressed:onclick
          ,
          child: Textdesign(
            fontWeight:isbold? FontWeight.bold:null,
            size: size,
            color: textcolor,
            text: text,
          ),
          style: ElevatedButton.styleFrom(
            primary: color,
          )));
  }


}
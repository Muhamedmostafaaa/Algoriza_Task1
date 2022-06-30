import 'package:flutter/material.dart';


import 'textdesign.dart';

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
    height: height,
    width: double.infinity,
    margin: EdgeInsets.symmetric(horizontal: 20),
    child: ElevatedButton(
        onPressed: onclick,
        child: Textdesign(color: textcolor,text: text,size: size,fontWeight:isbold? FontWeight.bold:null,),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6.0),
            ),
          ),
          backgroundColor: MaterialStateProperty.all(color),
        )),
  );
  }


}
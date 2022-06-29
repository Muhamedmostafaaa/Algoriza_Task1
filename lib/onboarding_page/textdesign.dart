import 'package:flutter/material.dart';

class Textdesign extends StatelessWidget{
  String? text;
  Color? color;
  double? size;
  FontWeight? fontWeight;

 Textdesign({required this.text,required this.color,required this.size,required this.fontWeight});

  @override
  Widget build(BuildContext context) {
    return Text(text.toString(),style: TextStyle(color: color,fontWeight: fontWeight,fontSize:size),maxLines: 2,);

  }

}

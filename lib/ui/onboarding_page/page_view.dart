import 'package:flutter/material.dart';
import 'package:task_1/shared/textdesign.dart';



class Pageviewdesign extends StatelessWidget{
  String? imagepath;
  String? firsttext;
  String? firstext2;
  String? secondtext;
  String? secondrext2;
  Pageviewdesign({this.imagepath,this.firsttext,this.firstext2,this.secondtext,this.secondrext2});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            height: 350,

            width: double.infinity,
            child: Image.asset(
              imagepath.toString(),
              fit: BoxFit.fill,
            )),
        Center(
            child: Textdesign(
                text: firsttext,
                color: Colors.black,
                size: 28,
                fontWeight: FontWeight.bold)),
        Center(
            child: Textdesign(
                text: firstext2,
                color: Colors.black,
                size: 28,
                fontWeight: FontWeight.bold)),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
              child: Textdesign(
                  text: secondtext,
                  color: Colors.grey,
                  size: 16,
                  fontWeight: null)),
        ),

        Center(
            child: Textdesign(
                text: secondrext2,
                color: Colors.grey,
                size: 16,
                fontWeight: null))
      ],
    );
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/onboarding_page/textdesign.dart';

class Pageviewdesign extends StatelessWidget{
  String? imagepath;
  String? firsttext;
  String? firstext2;
  String? secondtext;
  String? secondrext2;
  Pageviewdesign({this.imagepath,this.firsttext,this.firstext2,this.secondtext,this.secondrext2});
  @override
  Widget build(BuildContext context) {
    return Container(margin: EdgeInsets.only(left: 10.w,right: 10.w),
      child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Image.asset(
                  imagepath.toString(),
                  height: 10.h,
                ),
              ),
              SizedBox(
                height: 15.h,
              ),
              Center(
                  child: Textdesign(
                      text: firsttext,
                      color: Colors.black,
                      size: 26,
                      fontWeight: FontWeight.w600)),
              Textdesign(
                  text: firstext2,
                  color: Colors.black,
                  size: 26,
                  fontWeight: FontWeight.w600),
              SizedBox(
                height: 10.h,
              ),
              Container(margin: EdgeInsets.only(left: 20.h),
                child: Textdesign(
                    text:
                    secondtext,
                    color: Colors.grey,
                    size: 16,
                    fontWeight: null),
              ),
              Textdesign(text: secondrext2, color: Colors.grey, size: 16, fontWeight:null)
            ],
          )),
    );

  }

}
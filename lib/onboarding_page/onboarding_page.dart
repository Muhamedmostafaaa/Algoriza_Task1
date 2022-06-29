import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/login_screen/login_screen.dart';
import 'package:task_1/onboarding_page/page_view.dart';
import 'package:task_1/onboarding_page/textdesign.dart';
import 'package:task_1/register_screen/elvatedbutton_design.dart';
import 'package:task_1/register_screen/register_screen.dart';

class Onboardingpage extends StatelessWidget {
  static final ROUTR_NAME = 'onboarding';
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 50.h,
          ),
          Row(
            children: [
              Spacer(),
              InkWell(onTap: (){
                Navigator.pushNamed(context, Loginscreen.ROUTE_NAME);
              },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
                  margin: EdgeInsets.only(right: 20.w),
                  decoration: BoxDecoration(
                      color: Color(0Xfff9fbe7),
                      borderRadius: BorderRadius.all(Radius.circular(25.r))),
                  child: Text('Skip',
                      style: TextStyle(color: Colors.black, fontSize: 16.sp)),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '7',
                style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFFffa726)),
              ),
              Text(
                'Krave',
                style: TextStyle(
                    fontSize: 40.sp,
                    fontWeight: FontWeight.bold,
                    color: Color(0XFF00bfa5)),
              )
            ],
          )),
          SizedBox(
            height: 15.h,
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: PageView(
                controller: controller,
                children: [
                  Pageviewdesign(
                    imagepath: 'assets/images/delivery.png',
                    firsttext: 'Get food delivery to your',
                    firstext2: 'doorstep asap',
                    secondtext:
                        'We have young and professional delivery team that will bring yor food as soon as ',
                    secondrext2: 'possible to your doorstep',
                  ),
                  Pageviewdesign(
                    imagepath: 'assets/images/secondphoto.png',
                    firsttext: 'Buy any food from your',
                    firstext2: 'favorite restaurant',
                    secondtext:
                        'We are constantly adding your favourite restaurant throughout the territory and around  your area carefully selected',
                    secondrext2: 'your area carefully selected',
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
               Elvatedbutton_design(isbold: true,size: 20,height: 45.h,color: Colors.teal,text: 'Get Started',onclick: (){
                 Navigator.pushNamed(context, Loginscreen.ROUTE_NAME);
               },),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                    child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Textdesign(
                        text: 'Dont have an account? ',
                        color: Colors.black,
                        size: 18,
                        fontWeight: null),
                    InkWell(onTap: (){
                      Navigator.pushNamed(context, Registerscreen.ROUTE_NAME);
                    },
                      child: Textdesign(
                          text: 'Sign up',
                          color: Colors.cyan,
                          size: 18,
                          fontWeight: null),
                    )
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

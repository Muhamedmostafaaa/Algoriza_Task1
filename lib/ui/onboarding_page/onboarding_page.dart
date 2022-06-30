import 'package:flutter/material.dart';

import 'package:smooth_page_indicator/smooth_page_indicator.dart';


import 'package:task_1/ui/login_screen/login_screen.dart';
import 'package:task_1/ui/onboarding_page/page_view.dart';
import 'package:task_1/shared/textdesign.dart';

import '../../shared/elvatedbutton_design.dart';
import '../register_screen/register_screen.dart';

class Onboardingpage extends StatelessWidget {
  static final ROUTR_NAME = 'onboarding';
  final controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Row(
          children: [
            Spacer(),
            InkWell(onTap: (){
              Navigator.pushNamed(context, Loginscreen.ROUTE_NAME);
            },
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                  decoration: BoxDecoration(
                      color: Color(
                        0XFFd0d1c0,
                      ),
                      borderRadius: BorderRadius.circular(20)),
                  margin: EdgeInsets.only(right: 20, top: 5),
                  child: Text(
                    'Skip',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  )),
            ),
          ],
        ),
        Center(
          child: Container(
              height: 50,
              width: double.infinity,
              child: Image.asset(
                'assets/images/logo.png',
              )),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 20),
          height: 500,
          width: 500,

          child: PageView(
            controller: controller,
            children: [
              Pageviewdesign(
                imagepath: 'assets/images/delivery_logo.png',
                firsttext: 'Get food delivery to your',
                firstext2: 'doorstep asap',
                secondtext:
                    'We have young and professional delivery team that will bring your food as soon as',
                secondrext2: 'possible to your doorstep',
              ),
              Pageviewdesign(
                imagepath: 'assets/images/secondpage.png',
                firsttext: 'Buy any food from your ',
                firstext2: 'favorite restaurant',
                secondtext:
                    'We are constantly adding your favorite restaurant throughout the territory around ',
                secondrext2: 'your area carefully selected',
              )
            ],
          ),
        ),
        SmoothPageIndicator(
          controller: controller,
          count: 2,
          effect: JumpingDotEffect(
            dotColor: Color(0XFFd1c9c0), activeDotColor: Colors.amber,
            dotHeight: 10,
            dotWidth: 25,

            // strokeWidth: 5,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Elvatedbutton_design(isbold: true,color: Colors.teal,height: 50,text: 'Get Started',textcolor: Colors.white,size: 20,
        onclick: (){
          Navigator.pushNamed(context, Loginscreen.ROUTE_NAME);
          
        },),
        SizedBox(height: 15,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Textdesign(text: 'Dont have an account?', color: Colors.black, size: 16, fontWeight:null),
            SizedBox(width: 4,),
            InkWell
              (onTap: (){
                Navigator.pushNamed(context, Registerscreen.ROUTE_NAME);
            },
                child: Textdesign(text: 'Sign up', color: Colors.teal, size: 16, fontWeight: null))
        ],)
      ],
    ));
  }
}

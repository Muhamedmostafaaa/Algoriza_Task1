import 'package:flutter/material.dart';

import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:task_1/ui/register_screen/register_screen.dart';


import '../../shared/textdesign.dart';
import '../../shared/elvatedbutton_design.dart';

class Loginscreen extends StatelessWidget {
  static const String ROUTE_NAME = 'loginscreen';
  String initialCountry = 'EG';
  PhoneNumber number = PhoneNumber(isoCode: 'EG');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
          Stack(children: [
            Container(
              height: 250,
              width: double.infinity,
              child: Image.asset(
                'assets/images/bg.png',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ]),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Textdesign(
                text: 'Welcome to Fashion Daily',
                color: Colors.grey,
                size: 14,
                fontWeight: null),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 10),
            child: Row(
              children: [
                Textdesign(
                    text: 'Sign in',
                    color: Colors.black,
                    size: 35,
                    fontWeight: FontWeight.w600),
                Spacer(),
                Textdesign(
                    text: 'Help',
                    color: Colors.lightBlue,
                    size: 16,
                    fontWeight: null),
                SizedBox(
                  width: 3,
                ),
                Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.question_mark,
                      size: 14,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  'Phone Number',
                  textAlign: TextAlign.start,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(7),
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.black38)),
                  child: Stack(
                    children: [
                      Expanded(
                          child: InternationalPhoneNumberInput(
                              initialValue: number,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                              inputDecoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Eg: 812345678',
                                  hintStyle: TextStyle(color: Colors.black12)),
                              onInputChanged: (phone) {}))
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
          Elvatedbutton_design(
            isbold: false,
            size: 20,
            height: 50,
            color: Colors.blue,
            text: 'Sign in',
            onclick: () {
              Navigator.pushNamed(context, Loginscreen.ROUTE_NAME);
            },
          ),
          SizedBox(height: 10),
          Center(
              child: Textdesign(
                  text: 'Or', color: Colors.grey, size: 18, fontWeight: null)),
          Container(
              margin: EdgeInsets.all(18),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.blueAccent, width: 1),
              ),
              child: TextButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/google_logo.png',
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 6),
                    Textdesign(
                      text: 'Sign with by google',
                      color: Colors.blueAccent,
                      size: 16,
                      fontWeight: null,
                    ),
                  ],
                ),
              )),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Textdesign(
                  text: 'Dosent has any account?',
                  color: Colors.black54,
                  size: 16,
                  fontWeight: null),
              SizedBox(width: 4),
              InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Registerscreen.ROUTE_NAME);
                  },
                  child: Textdesign(
                      text: 'Register here',
                      color: Colors.lightBlue,
                      size: 16,
                      fontWeight: null))
            ],
          ),
          SizedBox(height: 20),
          Center(
              child: Textdesign(
                  text: 'Use the application according to policy rules,Any ',
                  color: Colors.black38,
                  size: 14,
                  fontWeight: null)),
          SizedBox(height: 10),
          Center(
              child: Textdesign(
                  text: 'kinds of viotations will be subject to sanctions',
                  color: Colors.black38,
                  size: 14,
                  fontWeight: null))
        ])));
  }
}

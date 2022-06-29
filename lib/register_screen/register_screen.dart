import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:task_1/login_screen/login_screen.dart';
import 'package:task_1/onboarding_page/onboarding_page.dart';
import 'package:task_1/onboarding_page/textdesign.dart';
import 'package:task_1/register_screen/elvatedbutton_design.dart';
import 'package:task_1/register_screen/textformfield_design.dart';


class Registerscreen extends StatefulWidget {
  static const String ROUTE_NAME = 'registerscreen';

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(children: [
              Container(
                height: 100.h,
                width: double.infinity,
                child: Image.asset(
                  'assets/images/bg.png',
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50, left: 20),
                child: InkWell(onTap: (){Navigator.pushReplacementNamed(context, Onboardingpage.ROUTR_NAME);},
                  child: Container(
                      padding: EdgeInsets.all(3),
                      decoration: BoxDecoration(
                          color: Colors.black54,
                          borderRadius: BorderRadius.circular(20)),
                      child: Icon(
                        Icons.arrow_back_ios_sharp,
                        color: Colors.white,
                      )),
                ),
              )
            ]),
            SizedBox(
              height: 20.h,
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
              height: 15.h,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Textdesign(
                      text: 'Register',
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
                    width: 3.h,
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
              height: 10.h,
            ),
            Form(
              key: formKey,
                child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Email',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Textformfield_design(hintstring: 'Eg: example@email.com'),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Phone Number',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Container(padding: EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black38)
                  ),
                    child:
                    Stack(
                      children: [
                        // Textformfield_design(
                        //     hintstring: 'Eg: 812345678'),
                        Expanded(child:
                        InternationalPhoneNumberInput(inputDecoration: InputDecoration(border:InputBorder.none,hintText: 'Eg: 812345678',hintStyle: TextStyle(color: Colors.black12)),
                            onInputChanged: (phone){}))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Text(
                    'Password',
                    textAlign: TextAlign.start,
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Textformfield_design(
                    hintstring: 'Password',
                    icon: Icon(
                      Icons.visibility,
                      color: Colors.black,
                    ),
                  )
                ],
              ),
            )),
            SizedBox(height: 15.h,),
            Elvatedbutton_design(isbold: false,text: 'Register',color: Colors.blue,size: 18,height: 45.h,onclick: (){
              if(formKey.currentState!.validate()){
                return null;
              }
            }

            ),
            SizedBox(height: 10.h,),
             Center(child: Textdesign(text: 'Or' ,color:Colors.grey, size: 18, fontWeight: null)),
            Container(margin: EdgeInsets.all(18),
                decoration: BoxDecoration(
              border: Border.all(color: Colors.blue, width: 1),


            ),

                child: TextButton(onPressed: (){}, child: Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ImageIcon(AssetImage('assets/images/google.png'),color: Colors.red,size: 18,),
                    SizedBox(width: 6.w,),
                    Textdesign(text: 'Sign with by google',color: Colors.blueAccent,size: 16,fontWeight: null,),


                  ],
                ),)),
            SizedBox(height: 20.h,),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textdesign(text: 'Has any account?', color: Colors.black54, size: 18, fontWeight: null),
                SizedBox(width: 4.w,),
                InkWell(onTap: (){
                  Navigator.pushNamed(context, Loginscreen.ROUTE_NAME);
                },
                    child: Textdesign(text: 'Sign in here', color: Colors.lightBlue, size: 18, fontWeight: null))
              ],
            ),
            SizedBox(height: 20.h,),
            Center(child: Textdesign(text: 'By regestering your account,your are agree to our ', color:Colors.black38, size: 14, fontWeight: null)),
            SizedBox(height: 10.h,),
            Center(child: Textdesign(text: 'terms and condition', color: Colors.lightBlue, size: 14, fontWeight: null))
          ],
        ),
      ),

    );
  }

}

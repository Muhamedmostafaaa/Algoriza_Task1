import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_1/login_screen/login_screen.dart';

import 'package:task_1/onboarding_page/onboarding_page.dart';
import 'package:task_1/register_screen/register_screen.dart';
void main(){
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  runApp(myapp());

}
class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(393, 830),
        minTextAdapt: true,

        builder: (context, child) {
          return MaterialApp(
              routes: {
                Onboardingpage.ROUTR_NAME: (context) => Onboardingpage(),
                Registerscreen.ROUTE_NAME:(context)=> Registerscreen(),
                Loginscreen.ROUTE_NAME:(context)=>Loginscreen()
              },
              initialRoute: Onboardingpage.ROUTR_NAME,
              theme: ThemeData(
                  scaffoldBackgroundColor: Colors.white,
                  appBarTheme: AppBarTheme(

                    elevation: 0,


                  )
              )

          );
        }
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:task_1/ui/login_screen/login_screen.dart';
import 'package:task_1/ui/onboarding_page/onboarding_page.dart';
import 'package:task_1/ui/register_screen/register_screen.dart';

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
    return


      MaterialApp(
          routes: {
            Onboardingpage.ROUTR_NAME: (context) => Onboardingpage(),
            Registerscreen.ROUTE_NAME: (context) => Registerscreen(),
            Loginscreen.ROUTE_NAME: (context) => Loginscreen()
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
}


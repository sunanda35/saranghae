import 'package:flutter/material.dart';
import 'package:saranghae/constant.dart';
import 'package:saranghae/pages/login/login_page.dart';
import 'package:saranghae/pages/login/login_profile_pic.dart';
import 'package:saranghae/pages/login/login_register.dart';
import 'package:saranghae/pages/profile/profile_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAPP_NAME,
      theme: ThemeData(
        primaryColor: Color(0xFFf8f8ff),
      ),
      initialRoute: 'profilePhotoRegister', //sunanda
      // initialRoute: 'profilePage', //shubankar
      routes: {
        'login': (context) => LogInPage(),
        'profileRegister': (context) => LoginProfileRegister(),
        'profilePhotoRegister': (context) => LoginProfilePhoto(),
        'profilePage': (context) => ProfilePage(),
      },
      // home: LogInPage(),
    );
  }
}

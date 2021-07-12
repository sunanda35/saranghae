import 'package:flutter/material.dart';
import 'package:saranghae/constant.dart';
import 'package:saranghae/pages/chat/chat_screen.dart';
import 'package:saranghae/pages/login/login_page.dart';
import 'package:saranghae/pages/login/login_profile_pic.dart';
import 'package:saranghae/pages/login/login_register.dart';
import 'package:saranghae/pages/profile/profile_page.dart';
import 'package:authentication/authentication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: kAPP_NAME,
      theme: ThemeData(
        primaryColor: Color(0xFFf8f8ff),
      ),
      initialRoute: 'auth',
      routes: {
        'auth': (context) =>
            Authentication(), // tried new position settings in flutter(ADVANCE CONCEPT)
        'login': (context) => LogInPage(),
        'profileRegister': (context) => LoginProfileRegister(),
        'profilePhotoRegister': (context) => LoginProfilePhoto(),
        'profilePage': (context) => ProfilePage(),
        'chatPage': (context) => ChatScreen(),
      },
    );
  }
}

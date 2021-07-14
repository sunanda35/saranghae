import 'package:flutter/material.dart';
import 'package:saranghae/pages/login/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Saranghae',
      theme: ThemeData(
        primaryColor: Color(0xFFf8f8ff),
      ),
      home: LogInPage(),
    );
  }
}

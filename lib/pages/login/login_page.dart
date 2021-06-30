import 'package:flutter/material.dart';

// fudk
class LogInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        // height: 200,
        child: Image.asset(
          'assets/background/login_bg_top.png',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}

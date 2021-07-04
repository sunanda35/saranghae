import 'package:flutter/material.dart';
import 'package:saranghae/constant.dart';

class LoginProfilePhoto extends StatefulWidget {
  const LoginProfilePhoto({Key? key}) : super(key: key);

  @override
  _LoginProfilePhotoState createState() => _LoginProfilePhotoState();
}

class _LoginProfilePhotoState extends State<LoginProfilePhoto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(kAPP_NAME),
      ),
      body: Center(
        child: Container(
          child: Text("Fucking fucker assholes"),
        ),
      ),
    );
  }
}

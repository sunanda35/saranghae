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
        child: Text("Fucker! Profile photo will show here. bitch!"),
      ),
    );
  }
}

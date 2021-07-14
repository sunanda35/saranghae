import 'package:flutter/material.dart';
import 'package:saranghae/constant.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saranghae/reusable/login_btn.dart';

class LogInPage extends StatelessWidget {
  final _phoneController = TextEditingController();

  // @override
  void dispose() {
    _phoneController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            color: kAPP_BG_COLOR,
          ),
          child: Stack(
            children: [
              Container(
                child: Image.asset(
                  'assets/background/login_bg_top.png',
                  fit: BoxFit.fitWidth,
                ),
              ),
              GestureDetector(
                onTap: () {
                  FocusScope.of(context).unfocus();
                },
                child: Container(
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Center(
                        child: Text(
                          'Welcome to,',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      Center(
                        child: Text(
                          kAPP_NAME,
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            foreground: Paint()
                              ..shader = LinearGradient(
                                colors: <Color>[
                                  Color(0xffDA44bb),
                                  Color(0xff8921aa)
                                ],
                              ).createShader(
                                  Rect.fromLTWH(0.0, 0.0, 200.0, 70.0)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Center(
                        child: SingleChildScrollView(
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            padding: EdgeInsets.only(
                              // top: 6,
                              // bottom: 6,
                              left: 10,
                              right: 10,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black38, spreadRadius: 1),
                              ],
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  '+91 ',
                                  style: TextStyle(
                                    color: Colors.indigoAccent,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Flexible(
                                  child: TextField(
                                    controller: _phoneController,
                                    keyboardType: TextInputType.number,
                                    cursorColor: Colors.black,
                                    decoration: InputDecoration(
                                      hintText: "9647345443",
                                      counterText: '',
                                      hintStyle:
                                          TextStyle(color: Colors.black26),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                            context,
                            'profileRegister',
                          );
                          // print('+91${_phoneController.text}');
                        },
                        child: signInBox(
                          context,
                          Icons.phone,
                          "Continue with PHONE",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap: () =>
                            Navigator.pushNamed(context, 'profilePage'),
                        child: signInBox(
                          context,
                          FontAwesomeIcons.google,
                          "Continue with GOOGLE",
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      signInBox(
                        context,
                        FontAwesomeIcons.facebook,
                        "Continue with FACEBOOK",
                      ),
                      SizedBox(
                        height: 30,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

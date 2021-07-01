import 'package:flutter/material.dart';

class LoginProfileRegister extends StatefulWidget {
  const LoginProfileRegister({Key? key}) : super(key: key);

  @override
  _LoginProfileRegisterState createState() => _LoginProfileRegisterState();
}

class _LoginProfileRegisterState extends State<LoginProfileRegister> {
  final _fNameController = TextEditingController();
  final _lNameController = TextEditingController();

  @override
  void dispose() {
    _fNameController.dispose();
    _lNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Saranghae'),
          automaticallyImplyLeading: false,
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Text("First Container"),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.only(left: 6, right: 6),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _fNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Your First Name",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.only(left: 6, right: 6),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _lNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Your Last Name",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.only(left: 6, right: 6),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _lNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Your Last Name",
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    padding: EdgeInsets.only(left: 6, right: 6),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      controller: _lNameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Your Last Name",
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

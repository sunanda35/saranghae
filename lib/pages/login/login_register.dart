import 'package:flutter/material.dart';

class LoginProfileRegister extends StatefulWidget {
  const LoginProfileRegister({Key? key}) : super(key: key);

  @override
  _LoginProfileRegisterState createState() => _LoginProfileRegisterState();
}

class _LoginProfileRegisterState extends State<LoginProfileRegister> {
  final _nameController = TextEditingController();
  final _aboutController = TextEditingController();
  final _jobTitleController = TextEditingController();
  final _companyController = TextEditingController();
  final _schoolController = TextEditingController();
  final _locationController = TextEditingController();
  String sex = "Male";
  List<dynamic> sexOriantation = [];
  List<dynamic> passion = [];

  @override
  void dispose() {
    _nameController.dispose();
    _aboutController.dispose();
    _jobTitleController.dispose();
    _companyController.dispose();
    _schoolController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        return new Future(() => false);
      },
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 45,
                ),
                Text(
                  "Tell us about you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 6, right: 6),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person_outline,
                        color: Colors.black,
                      ),
                      border: InputBorder.none,
                      hintText: "Enter Your Name",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "About you:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 6, right: 6),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: TextField(
                    controller: _aboutController,
                    maxLines: 3,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText:
                          "I like to sleep early, I like to get up late; I like to be alone, I like to be surrounded by people....",
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Gender:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(left: 6, right: 6),
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    // borderRadius: BorderRadius.circular(10),
                  ),
                  child: DropdownButton<String>(
                    value: sex,
                    elevation: 16,
                    style: const TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String? newValue) {
                      setState(() {
                        sex = newValue!;
                      });
                    },
                    items: <String>['Male', 'Female', 'Others']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

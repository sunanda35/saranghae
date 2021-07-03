import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginProfileRegister extends StatefulWidget {
  const LoginProfileRegister({Key? key}) : super(key: key);

  @override
  _LoginProfileRegisterState createState() => _LoginProfileRegisterState();
}

enum Gender { Male, Female, Others, none }

class _LoginProfileRegisterState extends State<LoginProfileRegister> {
  final _nameController = TextEditingController();
  final _aboutController = TextEditingController();
  final _phoneController = TextEditingController();
  final _jobTitleController = TextEditingController();
  final _companyController = TextEditingController();
  final _schoolController = TextEditingController();
  final _locationController = TextEditingController();
  Gender? sex = Gender.none;
  // List<dynamic> sexOriantation = [];

  // Map<String, bool> hobbies = {
  //   'One': false,
  //   'Two': false,
  //   'Three': false,
  //   'Four': false,
  //   'Five': false,
  //   'Six': false,
  //   'Seven': false,
  // };

  @override
  void dispose() {
    _nameController.dispose();
    _aboutController.dispose();
    _phoneController.dispose();
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
          child: Center(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: SingleChildScrollView(
                physics: ClampingScrollPhysics(),
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
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Your Name",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _phoneController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Phone Number",
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
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _aboutController,
                        maxLines: 3,
                        maxLength: 100,
                        decoration: InputDecoration(
                          counter: Offstage(),
                          border: InputBorder.none,
                          hintText:
                              "Ex.  I like to sleep early, I like to get up late; I like to be alone, I like to be surrounded by people....",
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Radio<Gender>(
                                  value: Gender.Male,
                                  groupValue: sex,
                                  onChanged: (Gender? value) {
                                    setState(() {
                                      sex = value;
                                    });
                                  },
                                ),
                                Text('Male'),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio<Gender>(
                                  value: Gender.Female,
                                  groupValue: sex,
                                  onChanged: (Gender? value) {
                                    setState(() {
                                      sex = value;
                                    });
                                  },
                                ),
                                Text('Female'),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Radio<Gender>(
                                  value: Gender.Others,
                                  groupValue: sex,
                                  onChanged: (Gender? value) {
                                    setState(() {
                                      sex = value;
                                    });
                                  },
                                ),
                                Text('Others'),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _locationController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.location_on_outlined,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Your Location",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _schoolController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.school_outlined,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "School",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _jobTitleController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            FontAwesomeIcons.walking,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Job Title",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 6, right: 6),
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextField(
                        controller: _companyController,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.insert_chart_outlined,
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                          hintText: "Company",
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Continue",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

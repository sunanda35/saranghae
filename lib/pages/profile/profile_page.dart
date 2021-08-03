import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            height: 641.0,
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
              image: DecorationImage(
                image: AssetImage('assets/profilePics/profilePic_1.jpg'),
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.2,
            minChildSize: 0.2,
            maxChildSize: 0.7,
            builder: (context, controller) => ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(20.0),
              ),
              child: Container(
                color: Color(0xFFf8f8ff),
                child: ListView(
                  controller: controller,
                  children: [
                    SafeArea(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          'Your Name!!',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF171717),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

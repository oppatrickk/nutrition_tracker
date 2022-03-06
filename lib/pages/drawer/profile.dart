import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition_app/widgets/constant.dart';


class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("Profile"),
          backgroundColor: kPrimaryColor,
          elevation: 0,
          titleSpacing: 0,
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: (Colors.transparent),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(64.0),
                child: Image.asset(
                    'assets/images/default_avatar.png',
                    scale: 2
                ),
              ),
            ),
            Positioned(
              child: Container(
                margin: const EdgeInsets.only(top: 125.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45.0),
                      topRight: Radius.circular(45.0),
                    ),
                    color: Colors.white),
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10.0, left: 30.0, right: 30.0, bottom: 50.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Column(
                                children: [
                                  SizedBox(height: 15),
                                  Text(
                                    "User",
                                    style: TextStyle(
                                        letterSpacing: 0.5,
                                        fontSize: 24.0,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Container(
                                    padding: EdgeInsets.all(16.0),
                                    height: 250,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: kPrimaryColor.withOpacity(0.8),
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withOpacity(0.3),
                                          spreadRadius: 2,
                                          blurRadius: 2,
                                          offset: Offset(0, 3), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "Summary",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


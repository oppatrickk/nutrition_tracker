import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nutrition_app/widgets/constant.dart';


class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: kPrimaryColor,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text("About"),
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
            Positioned(
              child: Container(
                margin: const EdgeInsets.only(top: 0.0),
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
                          top: 50.0, left: 30.0, right: 30.0, bottom: 50.0),
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "A Flutter App created for GDSC-L HackFest2022",
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 12.0,
                              ),
                            ),
                            SizedBox(height: 30),
                            Text(
                              "Team",
                              style: TextStyle(
                                  letterSpacing: 0.5,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              "Lean Jedfrey Deduque \nLance Stephen Bronzal \nJohn Patrick Prieto \nFrancis Maurice Miranda",
                              style: TextStyle(
                                letterSpacing: 0.5,
                                fontSize: 12.0,
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


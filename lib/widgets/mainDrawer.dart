import 'package:flutter/material.dart';
import 'package:nutrition_app/widgets/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';

class BaseDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(36.0),
          bottomLeft: Radius.circular(36.0)
      ),
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 212.0,
              width: MediaQuery.of(context).size.width,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: kPrimaryColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(64.0),
                      child: Image.asset(
                          'assets/images/default_avatar.png',
                          scale: 2
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Rick Astley",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ListTile(
              title: Text("Profile"),
              leading: FaIcon(FontAwesomeIcons.solidUser, size: 25.0),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => CaloriesPage()));
              },
            ),
            ListTile(
              title: Text("Settings"),
              leading: FaIcon(FontAwesomeIcons.cog, size: 25.0),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => CaloriesPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

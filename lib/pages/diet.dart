import 'package:flutter/material.dart';
import 'package:nutrition_app/widgets/constant.dart';
import 'package:google_fonts/google_fonts.dart';

// Pages
import 'package:nutrition_app/pages/calories.dart';

class DietPage extends StatefulWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  State<DietPage> createState() => _DietPageState();
}

class _DietPageState extends State<DietPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: CurveClipper(),
            child: Container(
              color: kPrimaryColor,
              height: 150.0,
              alignment: Alignment.center,
              child: Text(
                "Catalog",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 48
                ),
              ),
            ),
          ),
          Container( // Test
            alignment: Alignment.center,
            child: Text(
              "Test",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 12
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    int curveHeight = 20;
    Offset controlPoint = Offset(size.width / 2, size.height + curveHeight);
    Offset endPoint = Offset(size.width, size.height - curveHeight);

    Path path = Path()
      ..lineTo(0, size.height - curveHeight)
      ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
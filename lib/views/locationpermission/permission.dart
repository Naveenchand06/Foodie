import 'package:flutter/material.dart';
import 'package:foodie/views/home/homescreen.dart';
import 'package:foodie/views/locationpermission/loading.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationPermission extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _kHeight = MediaQuery.of(context).size.height;
    final _kWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        height: _kHeight,
        width: _kWidth,
        child: Column(
          children: [
            SizedBox(
              height: 250.0,
            ),
            Text(
              'Foodie',
              style: GoogleFonts.rancho(
                fontWeight: FontWeight.w900,
                fontSize: 50,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'Explore cool spots to eat',
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: Colors.grey.shade600,
                ),
              ),
            ),
            SizedBox(
              height: 200,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                width: _kWidth,
                height: 50.0,
                margin: EdgeInsets.symmetric(horizontal: 20.0),
                padding: EdgeInsets.symmetric(horizontal: 19.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.redAccent,
                ),
                child: Center(
                  child: Text(
                    'Get Started',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodie/services/location.dart';
import 'package:foodie/views/home/homescreen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: CupertinoActivityIndicator(
          radius: 30.0,
        ),
      ),
    );
  }
}

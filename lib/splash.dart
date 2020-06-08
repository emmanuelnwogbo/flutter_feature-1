import 'package:flutter/material.dart';
import 'package:Adiva/onboarding/onboarding.dart';
import 'dart:async';

const timeout = const Duration(seconds: 3);
const ms = const Duration(milliseconds: 1);

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool _splashVisible;

  @override
  Widget build(BuildContext context) {
    void handleTimeout() {
      Navigator.of(context).push(_createRoute());
    }

    startTimeout([int milliseconds]) {
      var duration = milliseconds == null ? timeout : ms * milliseconds;
      return new Timer(duration, handleTimeout);
    }

    startTimeout();
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      color: Color(0xFF3edd9c),
      alignment: Alignment.center,
      child: Image.network(
        "https://res.cloudinary.com/dlkv086v3/image/upload/v1591385468/logo_iumzc5.png",
        height: 300,
        width: 200,
        fit: BoxFit.cover,
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder (pageBuilder: (context, animation, secondaryAnimation) => Onboarding());
}
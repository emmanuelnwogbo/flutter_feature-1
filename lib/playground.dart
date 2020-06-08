import 'package:flutter/material.dart';
import 'dart:async';

const timeout = const Duration(seconds: 3);
const ms = const Duration(milliseconds: 1);

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool _splashOpacity = false;

  startTimeout([int milliseconds]) {
    var duration = milliseconds == null ? timeout : ms * milliseconds;
    return new Timer(duration, handleTimeout);
  }

  void handleTimeout() {
    setState(() {
      _splashOpacity = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    startTimeout();
    return Container(
        child: Center(
      child: AnimatedContainer(
        duration: Duration(milliseconds: 700),
        curve: Curves.easeInOutQuint,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: _splashOpacity
            ? Color(0xFF3edd9c).withOpacity(1)
            : Color(0xFF3edd9c).withOpacity(.1),
        alignment: Alignment.center,
        child: Image.network(
          "https://res.cloudinary.com/dlkv086v3/image/upload/v1591385468/logo_iumzc5.png",
          height: 300,
          width: 200,
          fit: BoxFit.cover,
        ),
      ),
    ));
  }
}


class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var currentPage = 1;

  PageController controller =
      PageController(initialPage: 1, viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      int next = controller.page.round();

      if (currentPage != next) {
        setState(() {
          currentPage = next;
          print(currentPage);
        });
      }
    });

    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.5,
        child: PageView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 6,
            controller: controller,
            itemBuilder: (context, index) {
              bool active = index == currentPage;
              return Center(child: _animatedBox(active, index, context, currentPage));
            }));
  }
}

_animatedBox(active, index, context, currentPage) {
  final double top = active ? 0 : 30;
  final double height = active ? MediaQuery.of(context).size.height : MediaQuery.of(context).size.height / 2;

  print(currentPage);

  return AnimatedContainer(
    duration: Duration(milliseconds: 500),
    curve: Curves.easeInOutQuint,
    margin: EdgeInsets.only(top: top, bottom: 50, right: 10),
    color: active ? Colors.red : Colors.blue,
    height: height,
  );
}


import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  var currentPage = 1.0;

  PageController controller =
      PageController(initialPage: 1, viewportFraction: 0.2);

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      setState(() {
        currentPage = controller.page;
        print(currentPage);
      });
    });

    return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height / 1.5,
        child: PageView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 10,
            controller: controller,
            itemBuilder: (context, index) {
              return Center(child: AnimatedBox(currentPage == index, index));
            }));
  }
}

class AnimatedBox extends StatelessWidget {
  AnimatedBox(this.active, this.index);
  final bool active;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 500),
      curve: Curves.fastLinearToSlowEaseIn,
      margin: EdgeInsets.only(top: active ? 0 : 30, bottom: 50, right: 10),
      color: active ? Colors.red : Colors.blue,
      //color: Colors.red,
      height: 50.0,
      width: MediaQuery.of(context).size.width,
    );
  }
}

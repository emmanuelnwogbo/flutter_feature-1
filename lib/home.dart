import 'package:flutter/material.dart';
import 'package:Adiva/onboarding/onboarding.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;
  final String test = 'uuyhy';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: SingleChildScrollView(child: Column(
        children: <Widget>[
          SizedBox(height: 80.0,),
          Center(child: Onboarding(),)
        ],
      ),) // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
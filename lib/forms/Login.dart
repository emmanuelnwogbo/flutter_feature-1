import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Center(
                child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    alignment: Alignment.center,
                    //color: Colors.red,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: MediaQuery.of(context).size.height / 19),
                        Container(
                          //color: Colors.red,
                          child: Image.network(
                            "https://res.cloudinary.com/dlkv086v3/image/upload/v1591385468/logo_iumzc5.png",
                            height: 100,
                            width:200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Center(
                                child: Container(
                                    child: Form(
                              child: Column(children: <Widget>[
                                Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        border: new Border.all(
                                            color: Color(0xFF3edd9c).withOpacity(.7),
                                            width: 1.0,
                                            style: BorderStyle.solid)),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(fontSize: 17.0, color: Color(0xFF2f3640).withOpacity(.2)),
                                          contentPadding: EdgeInsets.only(
                                              left: 10.0, right: 10.0),
                                          labelText: 'User ID',
                                          border: InputBorder.none),
                                    )),
                                SizedBox(height: 20.0),
                                Container(
                                    decoration: new BoxDecoration(
                                        color: Colors.white,
                                        border: new Border.all(
                                            color: Color(0xFF3edd9c).withOpacity(.7),
                                            width: 1.0,
                                            style: BorderStyle.solid)),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        labelStyle: TextStyle(fontSize: 17.0, color: Color(0xFF2f3640).withOpacity(.2)),
                                          contentPadding: EdgeInsets.only(
                                              left: 10.0, right: 10.0),
                                          labelText: 'Password',
                                          border: InputBorder.none),
                                    )),
                                SizedBox(height: 40.0),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      width: 190,
                                      height: 55,
                                      child: FlatButton(
                                        child: Text('LOGIN',
                                            style: TextStyle(
                                              fontSize: 18,
                                            )),
                                        onPressed: () {},
                                        color: Color(0xFF3edd9c),
                                        textColor: Colors.white,
                                        padding: EdgeInsets.all(8.0),
                                      ),
                                    ))
                              ]),
                            ))))
                      ],
                    )))));
  }
}

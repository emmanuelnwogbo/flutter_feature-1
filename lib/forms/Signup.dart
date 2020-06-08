import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Image.network(
                          "https://res.cloudinary.com/dlkv086v3/image/upload/v1591385468/logo_iumzc5.png",
                          height: 100,
                          width: 200,
                          fit: BoxFit.cover,
                        )
                      ],
                    ),
                    Padding(
                        padding:
                            EdgeInsets.only(top: 2.0, left: 10.0, right: 10.0),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Let's get started!",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 35.0)),
                              SizedBox(
                                height: 12.0,
                              ),
                              Text(
                                "You're just a few steps away from experiencing SOUT.",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.5),
                                    fontSize: 14.0),
                              ),
                              Text(
                                "Create your account first:",
                                style: TextStyle(
                                    color: Colors.black.withOpacity(.5),
                                    fontSize: 15.0),
                              ),
                              Container(
                                child: Form(
                                    child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    SizedBox(height: 10.0),
                                    Container(
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: new Border.all(
                                                color: Color(0xFF3edd9c)
                                                    .withOpacity(.7),
                                                width: 1.0,
                                                style: BorderStyle.solid)),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelStyle: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Color(0xFF2f3640)
                                                      .withOpacity(.2)),
                                              contentPadding: EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              labelText: 'Email',
                                              border: InputBorder.none),
                                        )),
                                    SizedBox(height: 20.0),
                                    Container(
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: new Border.all(
                                                color: Color(0xFF3edd9c)
                                                    .withOpacity(.7),
                                                width: 1.0,
                                                style: BorderStyle.solid)),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelStyle: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Color(0xFF2f3640)
                                                      .withOpacity(.2)),
                                              contentPadding: EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              labelText: 'Password',
                                              border: InputBorder.none),
                                        )),
                                    SizedBox(height: 20.0),
                                    Container(
                                        decoration: new BoxDecoration(
                                            color: Colors.white,
                                            border: new Border.all(
                                                color: Color(0xFF3edd9c)
                                                    .withOpacity(.7),
                                                width: 1.0,
                                                style: BorderStyle.solid)),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              labelStyle: TextStyle(
                                                  fontSize: 17.0,
                                                  color: Color(0xFF2f3640)
                                                      .withOpacity(.2)),
                                              contentPadding: EdgeInsets.only(
                                                  left: 10.0, right: 10.0),
                                              labelText: 'Confirm Password',
                                              border: InputBorder.none),
                                        )),
                                    SizedBox(height: 8.0),
                                    Text(
                                        "Password must be at least 8 characters with numbers or symbols.",
                                        style: TextStyle(
                                            color: Colors.black.withOpacity(.5),
                                            fontSize: 11.0)),
                                    SizedBox(height: 40.0),
                                    Center(child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        child: Container(
                                          width: 190,
                                          height: 55,
                                          child: FlatButton(
                                            child: Text('SIGN UP',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                )),
                                            onPressed: () {},
                                            color: Color(0xFF3edd9c),
                                            textColor: Colors.white,
                                            padding: EdgeInsets.all(8.0),
                                          ),
                                        )))
                                  ],
                                )),
                              ),
                            ],
                          ),
                        ))
                  ],
                ))));
  }
}

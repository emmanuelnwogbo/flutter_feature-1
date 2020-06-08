import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool locationOn = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFecf0f1),
            child: Center(
                child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 15,
                  right: 20.0,
                  left: 20.0,
                  bottom: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: MediaQuery.of(context).size.height / 12,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text('Emma',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      letterSpacing: .8,
                                      color: Colors.black.withOpacity(.7),
                                      fontSize: 33.0,
                                      fontWeight: FontWeight.bold)),
                              SizedBox(height: 1.2),
                              Text('June O7 2020, 6:39am',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                      letterSpacing: .8,
                                      color: Colors.black.withOpacity(.5),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.bold))
                            ],
                          ),
                          Container(
                            width: 100.0,
                            height: 50.0,
                            //color: Colors.red,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text('My location',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(
                                        letterSpacing: .8,
                                        color: Colors.black.withOpacity(.5),
                                        fontSize: 10,
                                        fontWeight: FontWeight.bold)),
                                SizedBox(height: 1.4),
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(30.0),
                                    child: Container(
                                      height: 28.0,
                                      width: 70.0,
                                      color: Colors.white,
                                      child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              locationOn
                                                  ? locationOn = false
                                                  : locationOn = true;
                                            });
                                          },
                                          padding: EdgeInsets.all(0.0),
                                          child: Stack(
                                            children: <Widget>[
                                              Positioned(
                                                  top: 1.0,
                                                  left: 12.0,
                                                  right: 12.0,
                                                  bottom: 1.0,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: <Widget>[
                                                      AnimatedOpacity(
                                                          opacity: locationOn
                                                              ? 1
                                                              : 0,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  500),
                                                          child: Text('ON')),
                                                      AnimatedOpacity(
                                                          opacity: locationOn
                                                              ? 0
                                                              : 1,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  500),
                                                          child: Text('OFF'))
                                                    ],
                                                  )),
                                              AnimatedPositioned(
                                                  duration: const Duration(
                                                      milliseconds: 500),
                                                  curve: Curves.ease,
                                                  top: 1.0,
                                                  right:
                                                      locationOn ? 1.0 : 40.0,
                                                  bottom: 1.0,
                                                  child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              100.0),
                                                      child: Container(
                                                        width: 28.0,
                                                        height: 28.0,
                                                        child: FlatButton(
                                                          child: Text(
                                                            '',
                                                          ),
                                                          onPressed: () {
                                                            setState(() {
                                                              locationOn
                                                                  ? locationOn =
                                                                      false
                                                                  : locationOn =
                                                                      true;
                                                            });
                                                          },
                                                          color: locationOn
                                                              ? Color(
                                                                  0xFF3edd9c)
                                                              : Colors.red
                                                                  .withOpacity(
                                                                      .9),
                                                          padding:
                                                              EdgeInsets.all(
                                                                  8.0),
                                                        ),
                                                      )))
                                            ],
                                          )),
                                    ))
                              ],
                            ),
                          )
                        ],
                      )),
                  SizedBox(
                    height: 10.0,
                  ),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Container(
                          height: MediaQuery.of(context).size.height / 2.5,
                          width: MediaQuery.of(context).size.width,
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 3,
                              offset: Offset(0, 1),
                            )
                          ]),
                          child: Stack(
                            children: <Widget>[
                              AspectRatio(
                                  aspectRatio: 18.0 / 17.0,
                                  child: Image(
                                      image: NetworkImage(
                                        "https://res.cloudinary.com/dlkv086v3/image/upload/v1591422885/caution_xneilq.png",
                                      ),
                                      fit: BoxFit.cover)),
                            ],
                          ))),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 18.0, left: 23.0, right: 23.0),
                      child: Center(
                          child: Column(
                        children: <Widget>[
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: FlatButton(
                                  child: Text('My Circle',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  onPressed: () {},
                                  color: Color(0xFF3edd9c),
                                  textColor: Colors.white,
                                  padding: EdgeInsets.all(8.0),
                                ),
                              )),
                          SizedBox(height: 23.0),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: FlatButton(
                                  child: Text('Share my location',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  onPressed: () {},
                                  color: Color(0xFF3edd9c),
                                  textColor: Colors.white,
                                  padding: EdgeInsets.all(8.0),
                                ),
                              )),
                          SizedBox(height: 23.0),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: FlatButton(
                                  child: Text('Emergency services',
                                      style: TextStyle(
                                        fontSize: 20,
                                      )),
                                  onPressed: () {},
                                  color: Color(0xFF3edd9c),
                                  textColor: Colors.white,
                                  padding: EdgeInsets.all(8.0),
                                ),
                              ))
                        ],
                      )))
                ],
              ),
            ))),
      ),
    );
  }
}

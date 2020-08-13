import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  _launchURL(String toMailId) async {
    var url = 'mailto:$toMailId';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#0094AC"),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Card(
                color: Hexcolor('#B2EC80'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                    bottom: Radius.circular(25.0),
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'Envirapp',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontFamily: 'OpenSans',
                              fontSize: 30.0,
                              color: Hexcolor('#21697A')),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                color: Hexcolor('#BD309A'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25.0),
                    bottom: Radius.circular(25.0),
                  ),
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: SizedBox(
                  height: 300.0,
                  width: double.infinity,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            'Let\'s make a change!',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
                          child: Text(
                            'We love our resources and so we do want to save them.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 20.0,
                                color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                          child: Text(
                            'Send us a mail to know more.',
                            style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 17.0,
                                color: Colors.white70),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(90, 30, 10, 0),
                          child: ButtonBar(
                            children: <Widget>[
                              RaisedButton(
                                color: Hexcolor('#0094AC'),
                                onPressed: () {
                                  _launchURL('inquiry@unep.org');
                                },
                                shape: StadiumBorder(),
                                child: Text('Mail UNEP helpline',
                                    style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontSize: 20,
                                        color: Hexcolor('#FFFFFF'))),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        color: Hexcolor('#B2EC80'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                            bottom: Radius.circular(10.0),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Center(child: Text("hello")),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        color: Hexcolor('#B2EC80'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                            bottom: Radius.circular(10.0),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Center(child: Text("hello")),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        color: Hexcolor('#B2EC80'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                            bottom: Radius.circular(10.0),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Center(child: Text("hello")),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        color: Hexcolor('#B2EC80'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                            bottom: Radius.circular(10.0),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Center(child: Text("hello")),
                      ),
                    ),
                    Container(
                      height: 150,
                      width: 150,
                      child: Card(
                        color: Hexcolor('#B2EC80'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(10.0),
                            bottom: Radius.circular(10.0),
                          ),
                        ),
                        margin: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 10.0),
                        child: Center(child: Text("hello")),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

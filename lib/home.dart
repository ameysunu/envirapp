import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'animals.dart';
import 'earth.dart';
import 'energy.dart';
import 'fossils.dart';
import 'water.dart';

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
        body: SingleChildScrollView(
          child: SafeArea(
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
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
                        child: InkWell(
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
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("images/animals.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Animals",
                                      style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          color: Hexcolor('#21697A')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Animals()),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: InkWell(
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
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("images/earth.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Earth",
                                      style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          color: Hexcolor('#21697A')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Earth()),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: InkWell(
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
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("images/energy.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Energy",
                                      style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          color: Hexcolor('#21697A')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Energy()),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: InkWell(
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
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("images/fossils.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Fossils",
                                      style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          color: Hexcolor('#21697A')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Fossils()),
                          ),
                        ),
                      ),
                      Container(
                        height: 150,
                        width: 150,
                        child: InkWell(
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
                            child: Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    height: 50,
                                    width: 50,
                                    child: Image.asset("images/water.png"),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Water",
                                      style: TextStyle(
                                          fontFamily: 'OpenSans',
                                          color: Hexcolor('#21697A')),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Water()),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Card(
                  color: Hexcolor('#FB9039'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                      bottom: Radius.circular(25.0),
                    ),
                  ),
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: InkWell(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                          child: SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Donate',
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 25.0,
                                      color: Hexcolor('#FFFFFF')),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Be a hero and donate to our sinking planet.\nEven a single dollar can make a difference!',
                                    style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontSize: 15.0,
                                        color: Hexcolor('#FFFFFF')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {
                      const url =
                          'https://www.adaptation-fund.org/ie/united-nations-environment-programme-unep/';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
                Card(
                  color: Hexcolor('#49D8BE'),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25.0),
                      bottom: Radius.circular(25.0),
                    ),
                  ),
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                  child: InkWell(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(20, 20, 20, 5),
                          child: SizedBox(
                            width: double.infinity,
                            height: 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Water Footprint Calculator',
                                  style: TextStyle(
                                      fontFamily: 'OpenSans',
                                      fontSize: 24.0,
                                      color: Hexcolor('#FFFFFF')),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                  child: Text(
                                    'Calculate how much water footprint you cause.',
                                    style: TextStyle(
                                        fontFamily: 'OpenSans',
                                        fontSize: 15.0,
                                        color: Hexcolor('#FFFFFF')),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    onTap: () async {
                      const url = 'https://www.watercalculator.org';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

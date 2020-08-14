import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Fossils extends StatefulWidget {
  @override
  _FossilsState createState() => _FossilsState();
}

class _FossilsState extends State<Fossils> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#984142"),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Hexcolor('#6F790E'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        bottom: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          "Fossils",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Hexcolor('#FFE6D7'),
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 200,
                  child: InkWell(
                    child: Image.asset("images/fossils.png"),
                    onTap: () async {
                      const url =
                          'https://www.dep.pa.gov/Business/Land/Waste/Recycling/Benefits/Pages/NaturalResources.aspx';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Coal, Petrol, Natural gases contribute to our fossils. Well, we don't have much of them left now. If we don't start conserving these, then we would move back to stone age. Various reduction methods like car pooling, switching off engines when not in use help the cause.",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Hexcolor('#176BBF'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        bottom: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          "How can you help?",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Colors.white,
                            fontSize: 25,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Hexcolor('#FFE4DF'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        bottom: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "To know about this, tap on the icon above to navigate and learn about how, we as humans can start saving up for future.",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15,
                          color: Hexcolor('#176BBF'),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

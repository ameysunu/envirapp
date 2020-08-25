import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';

class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
  void shareIt() {
    Share.share('https://github.com/ameysunu/envirapp', subject: 'Envirapp');
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                  child: Text(
                    "Hello!",
                    style: TextStyle(
                        color: Hexcolor('#B2EC80'),
                        fontFamily: 'OpenSans',
                        fontSize: 40),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
                  child: Text(
                    "We all love sweet smell of open fields and sweet green grass.",
                    style: TextStyle(
                      color: Hexcolor('#FFFFFF'),
                      fontFamily: 'OpenSans',
                      fontSize: 15,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Text(
                    "I am Amey, the guy behind this app. I believe, as humans we deserve a right to protect our planet and save it for the future.",
                    style: TextStyle(
                      color: Hexcolor('#B2EC80'),
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: RaisedButton(
                    color: Colors.white,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Container(
                              height: 30,
                              width: 30,
                              child: Image.asset('images/github.png')),
                        ),
                        Text(
                          "Check me out on GitHub!",
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'OpenSans',
                              fontSize: 15),
                        ),
                      ],
                    ),
                    onPressed: () async {
                      const url = 'https://www.github.com/ameysunu';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 15, 15, 0),
                  child: Text(
                    "I make open source projects, free for all developers to refer and make maximum use of whatever they do. I would really appreciate if you supported me as well :)",
                    style: TextStyle(
                      color: Hexcolor('#B2EC80'),
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                  child: RaisedButton(
                    color: Hexcolor('#FF813F'),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 20, 10),
                          child: Container(
                              height: 30,
                              width: 30,
                              child: Image.asset('images/coffee.png')),
                        ),
                        Text(
                          "Buy me a coffee!",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Cookie',
                              fontSize: 25),
                        ),
                      ],
                    ),
                    onPressed: () async {
                      const url = 'https://www.buymeacoffee.com/amey';
                      if (await canLaunch(url)) {
                        await launch(url);
                      } else {
                        throw 'Could not launch $url';
                      }
                    },
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Made with ❤️ by Amey",
                    style:
                        TextStyle(fontFamily: 'OpenSans', color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Hexcolor('#B2EC80'),
          child: Icon(
            Icons.share,
            color: Hexcolor('#0094AC'),
          ),
          onPressed: () {
            shareIt();
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Animals extends StatefulWidget {
  @override
  _AnimalsState createState() => _AnimalsState();
}

class _AnimalsState extends State<Animals> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#FF6B69"),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
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
                      padding: const EdgeInsets.all(15.0),
                      child: Center(
                        child: Text(
                          "Animals",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Hexcolor('#FF6B69'),
                            fontSize: 30,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                InkWell(
                  child: Card(
                    color: Hexcolor('#C35CAF'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        bottom: Radius.circular(25.0),
                      ),
                    ),
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: SizedBox(
                      height: 340.0,
                      width: double.infinity,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: SizedBox(
                                    height: 100,
                                    width: 100,
                                    child: Image.asset("images/animals.png"),
                                  ),
                                ),
                                Text(
                                  "Helluuu, I'm a tiger!\nSave me before I disappear!",
                                  style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 15,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                              child: Text(
                                'Over the last century, tiger habitats have fallen by around 95 percent, and there are now fewer than 4,000 tigers alive in the wild, reports the World Wildlife Federation (WWF).',
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontSize: 16,
                                    color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(20, 10, 0, 0),
                              child: Text(
                                'Source: Reader\'s digest.',
                                style: TextStyle(
                                    fontFamily: 'OpenSans',
                                    fontStyle: FontStyle.italic,
                                    fontSize: 13.0,
                                    color: Colors.white70),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () async {
                    const url =
                        "https://www.rd.com/list/endangered-tigers/#:~:text=All%20tigers%20are%20in%20danger,the%20rest%20are%20considered%20endangered.";
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Animals are an important asset to our planet and with time, we are risking and killing them for human needs such as skin, leather and various other needs. From the jungle to the oceans, wild animals face ongoing threats of cruelty and abuse. Bears are captured and forced to fight dogs. Marine mammals, such as whales and dolphins, forced to perform in cruel entertainment venues. Wild animals are traded as exotic pets or unproven medicine.",
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
                        "By supporting organizations like PETA, WWF and World Animal Protection, you are not just helping to change one life, but many more. Animals belong to their habitats just like humans belong to theirs. Let's not invade their space and also by donating, you are supporting the cause.",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15,
                          color: Hexcolor('#176BBF'),
                        ),
                      ),
                    ),
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

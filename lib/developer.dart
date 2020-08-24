import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Developer extends StatefulWidget {
  @override
  _DeveloperState createState() => _DeveloperState();
}

class _DeveloperState extends State<Developer> {
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
                // Padding(
                //   padding: const EdgeInsets.fromLTRB(20, 15, 15, 0),
                //   child: Text(
                //     "I hope this apps helps y'all negroes",
                //     style: TextStyle(
                //       color: Hexcolor('#B2EC80'),
                //       fontFamily: 'OpenSans',
                //       fontSize: 20,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

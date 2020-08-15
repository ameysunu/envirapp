import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Calculate extends StatefulWidget {
  @override
  _CalculateState createState() => _CalculateState();
}

class _CalculateState extends State<Calculate> {
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
                          "Water Calculator",
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
                Text(
                  "We only calculate footprint in bathrooms and toilets for now!",
                  style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 20,
                      color: Colors.white),
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

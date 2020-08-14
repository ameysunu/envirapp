import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Energy extends StatefulWidget {
  @override
  _EnergyState createState() => _EnergyState();
}

class _EnergyState extends State<Energy> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#FF774F"),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Hexcolor('#2769C6'),
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
                          "Energy",
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
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Energy is an important source of energy. You need energy to run mobile phones, laptops, home appliances and literally anything electrical.\nClick on the button for everytime, you use an electrical product and you'll see how important energy is",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

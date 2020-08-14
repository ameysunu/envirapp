import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Energy extends StatefulWidget {
  @override
  _EnergyState createState() => _EnergyState();
}

class _EnergyState extends State<Energy> {
  @override
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

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
                    color: Hexcolor('#495780'),
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
                    "Energy is an important source of energy. You need energy to run mobile phones, laptops, home appliances and literally anything electrical.\nClick on the button for everytime, you use an electrical product and you'll see how important energy is.",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipOval(
                      child: Material(
                        color: Hexcolor('#2769C6'),
                        child: InkWell(
                          splashColor: Hexcolor('#FF774F'),
                          child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(
                                Icons.power,
                                color: Colors.white,
                              )),
                          onTap: () {
                            incrementCounter();
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Text(
                        '$counter',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 30,
                          color: Hexcolor('#CFF6FF'),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10.0, 20, 10, 0),
                  child: Card(
                    color: Hexcolor('#936AC8'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        bottom: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            child: Image.asset('images/energystar.png'),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              "Energy Star is a program run by the U.S. Environmental Protection Agency (EPA) and U.S. Department of Energy (DOE) that promotes energy efficiency.The program provides information on the energy consumption of products and devices using different standardized methods. The Energy Star label is found on more than 75 different certified product categories, homes, commercial buildings, and industrial plants.",
                              style: TextStyle(
                                fontFamily: 'OpenSans',
                                fontSize: 15,
                                color: Hexcolor('#FFFFFF'),
                              ),
                            ),
                          ),
                        ],
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

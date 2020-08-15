import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:achievement_view/achievement_view.dart';
import 'package:url_launcher/url_launcher.dart';

class Water extends StatefulWidget {
  @override
  _WaterState createState() => _WaterState();
}

class _WaterState extends State<Water> {
  void _increment(BuildContext context) {
    AchievementView(
      context,
      title: 'Woohooo!',
      subTitle: 'You are perfectly hydrated for the day!',
      textStyleTitle:
          TextStyle(fontFamily: 'OpenSans', color: Hexcolor('#FFFFFF')),
      textStyleSubTitle:
          TextStyle(fontFamily: 'OpenSans', color: Hexcolor('#FFFFFF')),
      icon: Icon(
        Icons.local_drink,
        color: Colors.white,
      ),
      borderRadius: 5.0,
      color: Hexcolor('#D0B9BD'),
    )..show();
  }

  @override
  int counter = 0;
  void incrementCounter() {
    setState(() {
      counter++;
      if (counter == 8) {
        _increment(context);
      }
    });
  }

  void decrementCounter() {
    setState(() {
      counter--;
      if (counter == 8) {
        _increment(context);
      }
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#FFE9D0"),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Hexcolor('#446970'),
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
                          "Water",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Hexcolor('#FFFFFF'),
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
                    "Conserving water is important because it keeps water pure and clean while protecting the environment. Conserving water means using our water supply wisely and be responsible. As every individual depends on water for livelihood, we must learn how to keep our limited supply of water pure and away from pollution.",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Hexcolor('#446970'),
                      fontSize: 20,
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
                        "Add the number of times you have drank water today.",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15,
                          color: Hexcolor('#176BBF'),
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                        child: ClipOval(
                          child: Material(
                            color: Hexcolor('#FF8981'),
                            child: SizedBox(
                                width: 56,
                                height: 56,
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                          ),
                        ),
                        onTap: () {
                          decrementCounter();
                        }),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      child: Text(
                        '$counter',
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 30,
                          color: Hexcolor('#2F4858'),
                        ),
                      ),
                    ),
                    ClipOval(
                      child: Material(
                        color: Hexcolor('#FF8981'),
                        child: InkWell(
                          splashColor: Hexcolor('#FFE9D0'),
                          child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(
                                Icons.add,
                                color: Colors.white,
                              )),
                          onTap: () {
                            incrementCounter();
                          },
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    child: Card(
                      color: Hexcolor('#FFC1B6'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(25.0),
                          bottom: Radius.circular(25.0),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          "Hustle all what you want, but we all know how important water is, for all our basic needs from showering to drinking, we need water to survive. So why not save it? There is only 0.4% of fresh water available in the world. 0.4% for 7 billion people. Tap here to know more about water savings!",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 15,
                            color: Hexcolor('#176BBF'),
                          ),
                        ),
                      ),
                    ),
                    onTap: () async {
                      const url = 'https://conserves.co/';
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

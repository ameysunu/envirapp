import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:url_launcher/url_launcher.dart';

class Earth extends StatefulWidget {
  @override
  _EarthState createState() => _EarthState();
}

class _EarthState extends State<Earth> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Hexcolor("#5949EC"),
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
                          "Earth",
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            color: Hexcolor('#176BBF'),
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
                    child: Image.asset("images/earth.png"),
                    onTap: () async {
                      const url = 'https://www.welovetheearth.org';
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
                    "The Earth needs our help. If we don’t make massive changes to our behavior over the next twelve years, the damage we’ve done to this planet will be irreversible. Oceans will be destroyed, super storms will become even more super, cities will flood, the air will suck, and we’ll run out of food and energy. And not in a couple of hundred years either, scientists say it's right around the corner. But the power to prevent this is in our hands!",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      color: Hexcolor('#F9F871'),
                      fontSize: 20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    color: Hexcolor('#FF3E8A'),
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
                    color: Hexcolor('#FF835E'),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                        bottom: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        "Check out WeLoveTheEarth.org or simply tap on the earth icon above. Many initiatives are available on the website, regarding how you can make planet earth a better place.",
                        style: TextStyle(
                          fontFamily: 'OpenSans',
                          fontSize: 15,
                          color: Hexcolor('#FFFFFF'),
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

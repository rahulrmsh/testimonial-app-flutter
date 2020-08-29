import 'package:flutter/material.dart';
import 'package:testimonial_app/utilities/constants.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen();

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(color: mainBgColor),
            ),
            Container(
              color: mainBgColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 50),
                      child: Center(
                        child: CircleAvatar(
                          backgroundColor: mainBgColor,
                          backgroundImage: AssetImage('images/splash.png'),
                          radius: 100.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Center(
                          child: Text(
                            "Digital Base",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 50,
                              fontFamily: 'JosefinSans-Semi',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            "say it out loud",
                            style: TextStyle(
                              color: Color(0xFF00DCA5),
                              fontSize: 25,
                              fontFamily: 'JosefinSlab-Bold',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      )),
                  Expanded(
                    flex: 1,
                    child: SizedBox(
                      height: 50,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

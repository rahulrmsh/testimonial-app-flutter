import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:testimonial_app/utilities/constants.dart';

class DBProfile extends StatefulWidget {
  @override
  _DBProfileState createState() => _DBProfileState();
}

class _DBProfileState extends State<DBProfile> {
  int currentIndex;
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  @override
  void initState() {
    super.initState();
    currentIndex = 0;
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          elevation: 8,
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 32,
          ),
          backgroundColor: cardColor,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: FloatingNavbar(
          backgroundColor: Colors.white,
          selectedBackgroundColor: Colors.white,
          selectedItemColor: cardColor,
          unselectedItemColor: Colors.grey[600],
          items: [
            FloatingNavbarItem(
              icon: Icons.home,
              title: 'Home',
            ),
            FloatingNavbarItem(icon: Icons.search, title: 'Search'),
            FloatingNavbarItem(icon: Icons.people, title: 'People'),
            FloatingNavbarItem(icon: Icons.person, title: 'Profile')
          ],
          currentIndex: currentIndex,
          onTap: (value) {
            changePage(value);
          },
        ),
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Image.asset(
              'images/bg.png',
              fit: BoxFit.cover,
            ),
            Center(
              child: Container(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                  ),
                  color: Colors.white,
                  elevation: 6.0,
                  margin: EdgeInsets.all(0),
                  child: Wrap(
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 20.0),
                          child: Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 25.0,
                            ),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.person),
                        title: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Please enter email',
                            labelText: 'Enter Your Email address',
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                      ListTile(
                        leading: const Icon(Icons.lock),
                        title: TextFormField(
                          decoration: InputDecoration(
                            hintText: 'Please enter password',
                            labelText: 'Enter Your Password',
                          ),
                          keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 10.0, bottom: 15.0),
                        child: Center(
                          child: Text(
                            "FORGOT PASSWORD",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.black,
                                fontSize: 16.0),
                          ),
                        ),
                      ),
                      Center(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 40.0, top: 10.0),
                          child: Text.rich(
                            TextSpan(
                              children: const <TextSpan>[
                                TextSpan(
                                    text: ' USER ? ',
                                    style: TextStyle(
                                        fontSize: 16.0, color: Colors.black)),
                                TextSpan(
                                    text: 'REGISTER',
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        decoration: TextDecoration.underline,
                                        color: Colors.black)),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 150.0,
                ),
                child: Container(
                  width: circleRadius,
                  height: circleRadius,
                  decoration: ShapeDecoration(
                      shape: CircleBorder(), color: Colors.white),
                  child: Padding(
                    padding: EdgeInsets.all(circleBorderWidth),
                    child: DecoratedBox(
                      decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'images/icon.png',
                              ))),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

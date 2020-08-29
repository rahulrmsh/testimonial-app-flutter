import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:testimonial_app/utilities/constants.dart';

class DashPage extends StatefulWidget {
  @override
  _DashPageState createState() => _DashPageState();
}

class _DashPageState extends State<DashPage> {
  int currentIndex;
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
          margin: EdgeInsets.all(0),
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
            Container(
              height: 120.0,
              decoration: new BoxDecoration(
                color: cardColor,
                borderRadius: new BorderRadius.vertical(
                  bottom: new Radius.circular(30),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 15.0,
                ),
                child: Container(
                  width: 60,
                  height: 60,
                  decoration:
                      ShapeDecoration(shape: CircleBorder(), color: cardColor),
                  child: Padding(
                    padding: EdgeInsets.all(3),
                    child: DecoratedBox(
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                      ),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 75, left: 20),
                child: Text(
                  'Dashboard',
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 140, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'dbProfile');
                      },
                      child: Container(
                        height: 140,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.search,
                                  color: cardColor,
                                  size: 32,
                                ),
                              ),
                              Text(
                                'Profile View',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 5.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'insights');
                      },
                      child: Container(
                        height: 140,
                        width: 140,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.graphic_eq,
                                  color: cardColor,
                                  size: 32,
                                ),
                              ),
                              Text(
                                'Profile Insights',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              )
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5.0),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 5.0), //(x,y)
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  height: 60,
                  margin: EdgeInsets.symmetric(horizontal: 40),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 5.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.settings,
                        color: cardColor,
                        size: 32,
                      ),
                      Text(
                        'Profile View',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400),
                      ),
                      Icon(
                        Icons.navigate_next,
                        color: cardColor,
                        size: 42,
                      ),
                    ],
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

import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:testimonial_app/utilities/constants.dart';

class InsightsPage extends StatefulWidget {
  @override
  _InsightsPageState createState() => _InsightsPageState();
}

class _InsightsPageState extends State<InsightsPage> {
  int currentIndex;
  final double circleRadius = 100.0;
  final double circleBorderWidth = 8.0;
  @override
  void initState() {
    super.initState();
    currentIndex = 3;
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
        body: Stack(
          alignment: AlignmentDirectional.topStart,
          children: <Widget>[
            Container(
              color: Colors.white,
              height: 700,
            ),
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
                  'Profile Insights',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 450),
              child: Align(
                alignment: Alignment.center,
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Profile Insights',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 15.0, top: 15),
                                  child: Center(
                                    child: CircularPercentIndicator(
                                      backgroundColor: Color(0xFFEBEBEB),
                                      radius: 80.0,
                                      lineWidth: 12.0,
                                      percent: 0.6,
                                      progressColor: Color(0xFFE6595F),
                                    ),
                                  ),
                                ),
                                Text(
                                  '1000',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    'Total Reach',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 15.0, top: 15),
                                  child: Center(
                                    child: CircularPercentIndicator(
                                      backgroundColor: Color(0xFFEBEBEB),
                                      radius: 80.0,
                                      lineWidth: 12.0,
                                      percent: 0.6,
                                      progressColor: Color(0xFF60AFFE),
                                    ),
                                  ),
                                ),
                                Text(
                                  '700',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    'Contact Reach',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 15.0, top: 15),
                                  child: Center(
                                    child: CircularPercentIndicator(
                                      backgroundColor: Color(0xFFEBEBEB),
                                      radius: 80.0,
                                      lineWidth: 12.0,
                                      percent: 0.6,
                                      progressColor: Color(0xFF74C63D),
                                    ),
                                  ),
                                ),
                                Text(
                                  '300',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 15.0),
                                  child: Text(
                                    'Shared Reach',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.grey[500],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(top: 684),
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
                  floatingActionButtonLocation:
                      FloatingActionButtonLocation.centerDocked,
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
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:configurable_expansion_tile/configurable_expansion_tile.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
      child: Stack(
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
                margin: EdgeInsets.only(top: 110),
                child: Wrap(
                  children: <Widget>[
                    Center(
                      child: Container(
                        margin: EdgeInsets.only(top: 40.0),
                        child: Text(
                          'Rahul Ramesh',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.create,
                              size: 20,
                              color: Colors.grey[400],
                            ),
                            Text(
                              ' UI/UX Developer',
                              style: TextStyle(
                                  fontSize: 18.0, fontWeight: FontWeight.w300),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          GestureDetector(
                            onTap: null,
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(), color: cardColor),
                                  child: Padding(
                                    padding: EdgeInsets.all(3),
                                    child: DecoratedBox(
                                      decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                      ),
                                      child: Icon(
                                        Icons.phone,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Call',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: null,
                            child: Column(
                              children: [
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: ShapeDecoration(
                                      shape: CircleBorder(), color: cardColor),
                                  child: Padding(
                                    padding: EdgeInsets.all(3),
                                    child: DecoratedBox(
                                      decoration: ShapeDecoration(
                                        shape: CircleBorder(),
                                      ),
                                      child: Icon(
                                        Icons.map,
                                        color: Colors.white,
                                        size: 35,
                                      ),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Navigate',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: ConfigurableExpansionTile(
                        borderColorStart: cardColor,
                        borderColorEnd: cardColor,
                        animatedWidgetFollowingHeader: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                          ),
                        ),
                        headerExpanded: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.map,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  'About',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        header: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.map,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  'About',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        headerBackgroundColorStart: cardColor,
                        expandedBackgroundColor: cardColor,
                        headerBackgroundColorEnd: cardColor,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'About',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: ConfigurableExpansionTile(
                        borderColorStart: cardColor,
                        borderColorEnd: cardColor,
                        animatedWidgetFollowingHeader: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                          ),
                        ),
                        headerExpanded: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  FontAwesomeIcons.clock,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  'Office Hours',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        header: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  FontAwesomeIcons.clock,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  'Office Hours',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        headerBackgroundColorStart: cardColor,
                        expandedBackgroundColor: cardColor,
                        headerBackgroundColorEnd: cardColor,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Office Hours',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 15),
                      child: ConfigurableExpansionTile(
                        borderColorStart: cardColor,
                        borderColorEnd: cardColor,
                        animatedWidgetFollowingHeader: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: const Icon(
                            Icons.expand_more,
                            color: Colors.white,
                          ),
                        ),
                        headerExpanded: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  FontAwesomeIcons.award,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  'Acheivements',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        header: Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  FontAwesomeIcons.award,
                                  color: Colors.white,
                                  size: 35,
                                ),
                                Text(
                                  'Acheivements',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ),
                        headerBackgroundColorStart: cardColor,
                        expandedBackgroundColor: cardColor,
                        headerBackgroundColorEnd: cardColor,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Achievements',
                                  style: TextStyle(
                                      fontSize: 18.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 250,
                    )
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60.0,
              ),
              child: Container(
                width: circleRadius,
                height: circleRadius,
                decoration:
                    ShapeDecoration(shape: CircleBorder(), color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.all(circleBorderWidth),
                  child: DecoratedBox(
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'images/icon.png',
                        ),
                      ),
                    ),
                  ),
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
    );
  }
}

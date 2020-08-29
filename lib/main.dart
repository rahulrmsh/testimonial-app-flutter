import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testimonial_app/screens/dbprofile.dart';
import 'package:testimonial_app/screens/login.dart';
import 'package:testimonial_app/screens/splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MainApp());
  });
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'login',
      routes: {
        'splash': (context) => SplashScreen(),
        'login': (context) => LoginApp(),
        'dbProfile': (context) => DBProfile(),
      },
    );
  }
}

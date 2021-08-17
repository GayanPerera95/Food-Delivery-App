import 'package:flutter/material.dart';
import 'Screens/Navigation/bottemnavigation.dart';
import 'Screens/SignUp/body.dart';
import 'Screens/Welcome/welcome_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: WelcomeScreen(),
        //home: MyBottomNavigationBarState(),

        );
  }
}

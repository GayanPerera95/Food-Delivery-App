import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({ key }) : super(key: key);

  @override
  _SettingScreenState createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Center(
        child: new Text("This is Setting Page")
      ),
      
      
    );
  }
}
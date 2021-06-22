import 'package:flutter/material.dart';


class ContactScreen extends StatefulWidget {
  const ContactScreen({ key }) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(

      body: new Center(
        child: new Text("This is Contact Information Page")
      ),
      
      
    );
  }
}
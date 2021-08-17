import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/Login/login_screen.dart';
import 'package:food_delivery/Screens/SignUp/signup_screen.dart';
import 'package:food_delivery/constants.dart';

class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'WELCOME TO FOODI',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          SizedBox(height: size.height * .04),
          Positioned(
            child: Image.asset(
              'assets/images/welcome.png',
              width: size.width * .8,
            ),
          ),
          SizedBox(height: size.height * .06),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            width: size.width * 0.8,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    color: kPromaryColour,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginScreen();
                          },
                        ),
                      );
                    },
                    child:
                        Text('LOGIN', style: TextStyle(color: Colors.white)))),
          ),
          Container(
            width: size.width * 0.8,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(29),
                child: FlatButton(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                    color: kPrimaryLightColor,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterScreen();
                          },
                        ),
                      );
                    },
                    child: Text(
                      'SIGNIN',
                      style: TextStyle(color: Colors.black),
                    ))),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/DashBoard/home_screen.dart';
import 'package:food_delivery/Screens/SignUp/signup_screen.dart';

import 'package:food_delivery/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("LOGIN",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              textAlign: TextAlign.center),
      
          Positioned(
            child:
                Image.asset('assets/images/signin.png',
                ),
          ),
          TextFieldContainer(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon( Icons.person,
                  color: kPromaryColour,
                  ),
                  hintText: "Enter Your Email",
                  border: InputBorder.none
                  ),
              ),
            ),
          TextFieldContainer(
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  icon: Icon( Icons.lock,
                  color: kPromaryColour,
                  ),
                  hintText: "Enter Your Password",
                  suffixIcon: Icon(Icons.visibility,
                  color: kPromaryColour),
                  border: InputBorder.none
                  ),
              ),
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(29),
              child: FlatButton(onPressed: (){
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return HomeScreen();
                             },
                        ),
                      );
              }, 
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              color: kPromaryColour,
              
              child: 
              Text('Sumbit', style: TextStyle(color: Colors.black),
            ),
            ),
            )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an Account ? "),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return RegisterScreen();
                        },
                        ),
                      );
                    },
                  
                  child: Text("Sign Up", style: TextStyle(fontWeight: FontWeight.bold,
                  
                  ),),)
              ],
            )
           
        ],
      ),
    );
  }
}

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override 
  Widget build(BuildContext context){
    Size size = MediaQuery.of(context).size;
    return Container(
       margin: EdgeInsets.symmetric(vertical: 15),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * .8,
            decoration: BoxDecoration(
                color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)
                ),
    child: child,
          );
  }
}

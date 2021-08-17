import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/DashBoard/home_screen.dart';
import 'package:food_delivery/Screens/SignUp/signup_screen.dart';
import 'package:food_delivery/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      body: Container(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
          child: Text("LOGIN",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  textAlign: TextAlign.center
                  )),
          Container(
            child:
                Image.asset('assets/images/signin.png',
                )),
          Container(
             child: Column(
               children: <Widget>[
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    icon: Icon( Icons.person,
                    color: kPromaryColour,
                    ),
                    hintText: "Enter Your Email",
                    border: InputBorder.none
                    ),
                      ),
            
                TextField(          
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
               ],
                ),
          ),
            
          Container(
              margin: EdgeInsets.symmetric(vertical: 15),
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
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 100),
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
       margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * .8,
            decoration: BoxDecoration(
                color: kPrimaryLightColor, borderRadius: BorderRadius.circular(29)
                ),
    child: child,
          );
  }
}

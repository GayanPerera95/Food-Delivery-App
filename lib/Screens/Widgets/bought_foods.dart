
import 'package:flutter/material.dart';
import 'package:food_delivery/constants.dart';

class BoughtFoods extends StatefulWidget {
  @override
  _BoughtFoodsState createState() => _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods> {

  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30.0),
      child: Stack(
      children: <Widget>[
        Container(
          height: 300.0,
          width: 430.0,

          child: Image.asset("assets/images/breakfast.jpg", fit: BoxFit.cover),
        ),
        Positioned(
         left: 0.0,
         bottom: 0.0,
         child:Container(
          height: 60.0,
          width: 430.0,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black, Colors.black12
              ],
              
              ),
          ),
          ),
        ),
        
        Positioned(
          left: 10.0,
          bottom: 10.0,
          child: Row(
           children: <Widget>[
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
             
           children: <Widget>[
            Text("BreakFast",
              style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
               ),
              ),

           Row(
            children: <Widget>[
              Icon(Icons.star, color: kPromaryColour,size: 16.0,),
              Icon(Icons.star, color: kPromaryColour,size: 16.0,),
              Icon(Icons.star, color: kPromaryColour,size: 16.0,),
              Icon(Icons.star, color: kPromaryColour,size: 16.0,),
              Icon(Icons.star, color: kPromaryColour,size: 16.0,),
              SizedBox(width: 20.0,),
              Text("(22.0 Views)",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16.0,
              )
                 ),
                ],
              ),
             
            ],
          ),
                 
          ]
          ),
        ),
      ]
    ),
    );
    
  }
}

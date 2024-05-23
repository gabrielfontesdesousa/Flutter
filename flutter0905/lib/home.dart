import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff760BFF),
      body: Column(
        children: [
          
          Expanded(child: Container(child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("EventEasy", style: TextStyle(fontSize: 30,fontFamily: "Poppins", fontWeight: FontWeight.w900, color: Colors.white),)

              ],
            ),
          ),)),

           Container(
            decoration: BoxDecoration(
          borderRadius:BorderRadius.only(topLeft: Radius.circular(35),topRight: Radius.circular(35)),
          color: Colors.white

            ),

              height: 650,
              child: Column(  
                
              ),            
            ),
          
      
        ],
      ),
    );
  }
}

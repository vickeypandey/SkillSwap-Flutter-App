import 'package:flutter/material.dart';
import '../models/user.dart';

class ProfileScreen extends StatelessWidget {

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    User user = User(
      "Vickey",
      "Flutter Developer",
      "",
    );


    return Scaffold(


      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [

            CircleAvatar(

              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),

            ),


            SizedBox(height:20),

            Text(
              user.name,
              style: TextStyle(
                fontSize:30,
                fontWeight:FontWeight.bold,

              ),
            ),

            SizedBox(height:10),

            Text(
              user.role,
              style: TextStyle(

                fontSize:20,
              ),
            ),

            SizedBox(height:30),

            Text(
              "Skills",
              style: TextStyle(
                fontSize:25,
                fontWeight:FontWeight.bold,
              ),
            ),

            SizedBox(height:10),

            Text("Flutter"),
            Text("Java"),
            Text("Python"),

          ],
        ),
      ),
    );
  }
}
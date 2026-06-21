
import 'package:flutter/material.dart';
import 'home_screen.dart';

// LOGIN SCREEN

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text("SkillSwap"),
        backgroundColor: Colors.blue,
      ),


      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [

              Icon(
                Icons.handshake,
                size: 80,
                color: Colors.blue,
              ),


              SizedBox(height:20),

              Text(
                "SkillSwap",
                style: TextStyle(
                  fontSize:35,
                  fontWeight:FontWeight.bold,
                ),
              ),

              SizedBox(height:30),

              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:"Enter Email",
                  labelText:"Email",
                ),
              ),

              SizedBox(height:20),

              TextField(
                obscureText:true,
                decoration:InputDecoration(
                  border:OutlineInputBorder(),
                  hintText:"Enter Password",
                  labelText:"Password",
                ),
              ),


              SizedBox(height:30),

              SizedBox(
                width:200,
                child: ElevatedButton(
                  onPressed:(){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:(context)=>const HomeScreen(),
                      ),
                    );
                  },
                  child:Text("Login"),
                ),
              )
            ],

          ),

        ),

      ),

    );

  }

}


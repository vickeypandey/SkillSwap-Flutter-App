import 'package:flutter/material.dart';
class SkillDetailPage extends StatelessWidget {

  final String name;
  final String level;

  const SkillDetailPage({
    super.key,

    required this.name,
    required this.level,

  });



  @override

  Widget build(BuildContext context){

    return Scaffold(

      appBar:AppBar(
        title:Text(name),

      ),




      body:Center(

        child:Column(
          mainAxisAlignment:MainAxisAlignment.center,

          children:[

            Text(

              name,
              style:TextStyle(
                fontSize:50,
                fontWeight:FontWeight.bold,

              ),
            ),


            Text(level),
            ElevatedButton(
              onPressed:(){},
              child:Text("Request Skill"),
            )

          ],
        ),
      ),
    );
  }
}
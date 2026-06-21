import 'package:flutter/material.dart';
import '../models/skill.dart';


class SkillCard extends StatelessWidget {

  final Skill skill;


  const SkillCard({
    super.key,
    required this.skill,
  });


  @override
  Widget build(BuildContext context){

    return Card(

      child: Padding(

        padding: EdgeInsets.all(20),

        child: Row(

          children:[

            Expanded(

              child: Text(
                skill.name,
                style: TextStyle(
                  fontSize:22,
                  fontWeight:FontWeight.bold,
                ),
              ),

            ),


            Text(skill.level),

          ],

        ),

      ),

    );

  }

}
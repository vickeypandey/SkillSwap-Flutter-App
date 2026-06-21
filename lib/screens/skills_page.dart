
import 'package:flutter/material.dart';
import '../models/skill.dart';
import '../widgets/skill_card.dart';
import 'skill_detail_page.dart';

// SKILLS PAGE


class SkillsPage extends StatelessWidget {

  final List<Skill> skills;

  const SkillsPage({
    super.key,
    required this.skills,

  });


  @override

  Widget build(BuildContext context){

    return ListView.builder(
      padding:EdgeInsets.all(20),
      itemCount:skills.length,
      itemBuilder:(context,index){

        return InkWell(

          onTap: (){

            Navigator.push(

              context,

              MaterialPageRoute(

                builder:(context)=>SkillDetailPage(

                  name:skills[index].name,

                  level:skills[index].level,

                ),

              ),

            );

          },

          child: SkillCard(

            skill: skills[index],
          ),
        );
      },
    );
  }
}
